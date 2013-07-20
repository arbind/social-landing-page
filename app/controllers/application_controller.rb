class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected

  def clear_session
    session[:user] = nil
  end

end
