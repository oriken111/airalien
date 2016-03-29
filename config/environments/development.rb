Rails.application.configure do
  config.cache_classes = false
  config.eager_load = false
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false
  config.active_support.deprecation = :log
  config.active_record.migration_error = :page_load
  config.assets.debug = true
  config.assets.digest = true
  config.assets.raise_runtime_errors = true
  config.serve_static_assets = true
  config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
  config.action_mailer.perform_deliveries = true
  config.action_mailer.delivery_method = :sendmail
  config.action_mailer.raise_delivery_errors = true
  config.action_mailer.smtp_settings = {
    address: 'smtp.mandrillapp.com',
    port: 587,
    enable_starttls_auto: true,
    user_name: 'oriken111@gmail.com',
    password: 'pOKaJP2mNN4qqxL5qbJhkw',
    authentication: 'login'
  }
end
