class RootController < ApplicationController
  before_action :clear_session, only: :signup

  def signup() end

end