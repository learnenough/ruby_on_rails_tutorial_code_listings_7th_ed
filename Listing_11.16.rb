Rails.application.configure do
  .
  .
  .
  config.action_mailer.raise_delivery_errors = false

  host = 'example.com' # Don't use this literally; use your local dev host instead
  # Use this on the cloud IDE.
  config.action_mailer.default_url_options = { host: host, protocol: 'https' }
  # Use this if developing on localhost.
  # config.action_mailer.default_url_options = { host: host, protocol: 'http' }
  .
  .
  .
end
