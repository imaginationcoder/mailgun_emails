class HomeController < ApplicationController

  def new

  end

  def send_mail
    subject = params["subject"]
    emails = params["emails"].split(',').map(&:strip)
    emails.each do |email|
    ModelMailer.new_record_notification(email, subject).deliver
    end
    flash[:notice] = 'Successfully sent emails'
    redirect_to home_new_url
  end
end
