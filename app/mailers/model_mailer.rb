class ModelMailer < ApplicationMailer
  default from: ENV['SENDER']
  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.model_mailer.new_record_notification.subject
  #
  def new_record_notification(emails, subject)
    mail(to: emails, subject: subject)
  end
end
