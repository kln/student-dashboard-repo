class ApplicationController < ActionController::Base
  def authenticate_user!
    unless session[:user_role] == 'admin' || session[:user_role] == 'student'
      render json: { error: 'Student Dashboard - Unauthorized' }
    end
  end

  def current_user_email
    @current_user_email ||= session[:user_email]
  end
end
