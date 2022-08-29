class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.credentials.user_name
  layout "mailer"
end
