class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session

  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to login_url, :notice => 'User is not logged in'
    end
  end

  def admin!
    if current_user.role == 'admin'
      super
    else
      redirect_to catches_url, :notice => 'User is not admin'
    end
  end
end
