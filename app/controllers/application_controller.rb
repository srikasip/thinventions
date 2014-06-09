class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_filter :authorize
  
  def authorize
    unless User.find_by_id(session[:user_id])
      redirect_to login_url, alert: "Please log in"
    end
  end
  
  def signed_in?
    if session[:user_id]
      return true
    else
      return false
    end
  end
  
  helper_method :signed_in?
end
