# Run with: rackup private_pub.ru -s thin -E production
require "bundler/setup"
require "yaml"
require "faye"
require "private_pub"

RAILS_ENV ||= 'development'
CONFIG = (YAML.load_file('config/config.yml')[RAILS_ENV] rescue {}).merge(ENV)
PrivatePub.config[:server] = CONFIG['faye_server']
PrivatePub.config[:secret_token] = CONFIG['faye_secret_token']
PrivatePub.config[:signature_expiration] = CONFIG['faye_signature_expiration']
Faye::WebSocket.load_adapter('thin')
run PrivatePub.faye_app
