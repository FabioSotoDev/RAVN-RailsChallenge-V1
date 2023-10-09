class InactiveMailer < ApplicationMailer
  default from: 'from@example.com'

  def send_inactive
    @user = params[:user]
    mail(to: @user.email, subject: 'Looks like you are inactive')
  end
end
