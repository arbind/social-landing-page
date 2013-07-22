class RootController < ApplicationController
  before_action :ensure_logout
  before_action :sign_in, only: :oauth_sign_in

  def signup()                                    end
  def signout()       redirect_to signup_path     end
  def oauth_failure() redirect_to signup_path     end

  def oauth_sign_in() redirect_to dashboard_path  end

  def ping() render json: :pong end

  protected

  def sign_in
    params = user_hash
    tid = params[:twitter_id]
    user = TwitterUser.where(twitter_id: tid).first_or_create
    params[:signins] = user.signins + 1
    user.update_attributes(params)
    session[:current_user] = tid
  end

  def user_hash
    {
      twitter_id:   "#{oauth_hash.uid}",
      token:        oauth_credentials.token,
      secret:       oauth_credentials.secret,
      name:         oauth_info.name,
      screen_name:  oauth_info.nickname,
      image:        oauth_info.image,
      address:      oauth_raw_info.location,
      description:  oauth_raw_info.description,
      twitter_account_created_at: oauth_raw_info.created_at,
    }
  end

  def oauth_hash()        request.env['omniauth.auth']  end
  def oauth_info()        oauth_hash.info || {}         end
  def oauth_credentials() oauth_hash.credentials || {}  end

  def oauth_raw_info
    extra = oauth_hash.extra if oauth_hash
    raw_info = extra.raw_info if extra
    raw_info ||= {}
  end

end