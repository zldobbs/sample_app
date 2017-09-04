module SessionsHelper
  # Login users stored until browser closes
  def log_in(user)
    session[:user_id] = user.id
  end

  # Find the current user
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Check if a user is currently logged in
  def logged_in?
    !current_user.nil?
  end
end
