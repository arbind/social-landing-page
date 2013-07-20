class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def current_user
    @current_user ||= TwitterUser.where(twitter_id: session[:current_user]).first
  rescue
    ensure_logout
  end

  protected

  def ensure_logout
    session.delete :current_user
    @current_user = nil
  end

  def ensure_login
    redirect_to signup_path unless current_user
  end

end
