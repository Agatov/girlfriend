class OrderMailer < ActionMailer::Base
  default from: "no-reply@sorry.helpmego.ru"

  #params: phone, username, created_at
  def call_mail params
    build_params params
    send_email t('emails.call_mail.subject')
  end

private
  def send_email subject
    mail(to: 'mav@mlsit.ru', subject: subject)
  end

  def build_params params
    @username = params[:username]
    @phone = params[:phone]
    @created_at = params[:created_at]
  end
end
