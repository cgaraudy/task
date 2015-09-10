class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # We can declare a helper method to make it available to the controller and view
  helper_method :current_user

  private

  def current_user
    # raise session.inspect
    # If @current_user is false, nil, or undefined, set it equal to stuff on the right
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
