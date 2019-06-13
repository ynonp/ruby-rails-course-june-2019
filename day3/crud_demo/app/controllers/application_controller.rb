class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied, with: :redirect_to_login

  def redirect_to_login(exception)
    if current_user.nil?
      redirect_to(new_user_session_path, notice: 'Please sign in to continue')
    else
      raise exception
    end
  end
end
