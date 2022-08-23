class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.username
  layout "mailer"
end
