class DefaultMailer < ActionMailer::Base
  include Sidekiq::Mailer
  sidekiq_options retry: false

  default from: 'no-reply@marq.com.ar'
end
