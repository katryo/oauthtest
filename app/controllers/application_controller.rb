class ApplicationController < ActionController::Base
  # before_filter :immigration

  protect_from_forgery

  helper_method :current_user

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]   
  end

end
