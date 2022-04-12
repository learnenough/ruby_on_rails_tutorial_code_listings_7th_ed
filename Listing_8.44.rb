module SessionsHelper

  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
  .
  .
  .
  # Logs out the current user.
  def log_out
    reset_session
    @current_user = nil
  end
end
