# This file is used by Rack-based servers to start the application.
require ::File.expand_path('../config/environment',  __FILE__)
use Faye::RackAdapter, PrivatePub.config.merge(mount: '/faye',
                                               extensions: [PrivatePub::FayeExtension.new])
Faye::WebSocket.load_adapter('thin')
run Debateaberto::Application
