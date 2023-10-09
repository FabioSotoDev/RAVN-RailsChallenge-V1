class CatchNotifierMailer < ApplicationMailer
  default from: 'from@example.com'

  def send_catch
    @user = params[:user]
    @pokemon = params[:pokemon]
    mail(to: @user.email, subject: "New Pokemon Captured: #{@pokemon.name}")
  end
end
