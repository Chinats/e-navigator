mail = ENV['MAIL_ADDRESS']
pass = ENV['MAIL_PASSWORD']
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  user_name:            mail,
  password:             pass,
  authentication:       'plain',
  enable_starttls_auto: true  }