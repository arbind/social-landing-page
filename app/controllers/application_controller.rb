class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user
  rescue_from Exception, :with => :redirect_to_signup_path

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
    redirect_to_signup_path unless current_user
  end

  def redirect_to_signup_path
    redirect_to signup_path
  end
end

class ApplicationController::Protected < ApplicationController
  layout 'application_protected'
  before_action :ensure_login
end