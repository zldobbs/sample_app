module SessionsHelper
  # Login users stored until browser closes
  def log_in(user)
    session[:user_id] = user.id
  end
end
