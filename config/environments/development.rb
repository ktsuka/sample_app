SampleApp::Application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.default_url_options = { :host => 'https://180a103e53f84bb389a0c2481518373a.vfs.cloud9.us-east-2.amazonaws.com', :port => 8080 }
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = {
    :address => 'smtp.gmail.com',
    :port => 587,
    :domain => 'vfs.cloud9.us-east-2.amazonaws.com',
    :user_name => ENV['SMTP_MAIL'],
    :password => ENV['SMTP_PASS'],
    :authentication => :plain,
    :enable_starttls_auto => true
  }

end
