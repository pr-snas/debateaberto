CONFIG = Debateaberto::Application::CONFIG
PrivatePub.config[:server] = CONFIG['faye_server']
PrivatePub.config[:secret_token] = CONFIG['faye_secret_token']
PrivatePub.config[:signature_expiration] = CONFIG['faye_signature_expiration']
