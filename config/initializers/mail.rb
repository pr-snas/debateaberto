ActionMailer::Base.smtp_settings = {
  address:        Debateaberto::Application::CONFIG['smtp_address'],
  port:           Debateaberto::Application::CONFIG['smtp_port'],
  authentication: :plain,
  user_name:      Debateaberto::Application::CONFIG['smtp_user'],
  password:       Debateaberto::Application::CONFIG['smtp_password'],
  domain:         Debateaberto::Application::CONFIG['smtp_domain']
}
ActionMailer::Base.delivery_method = :smtp
