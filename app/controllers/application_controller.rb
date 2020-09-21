class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user

  def welcome
    redirect_to '/login'
  end

# helper method to return the current user
  def current_user
    session[:name] ||= nil
  end
end
