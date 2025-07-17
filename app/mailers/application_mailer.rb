# frozen_string_literal: true

# Application mailer
class ApplicationMailer < ActionMailer::Base
  default from: ENV.fetch('EMAIL_ADDRESS', nil)
  layout 'mailer'
end
