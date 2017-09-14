class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def current_user
    @current_user ||= User.find(id: seesion[:user_id] if session[:user_id])
  end
  helper_method :current_user

end
