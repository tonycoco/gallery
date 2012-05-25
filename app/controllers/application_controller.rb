class ApplicationController < ActionController::Base
  protect_from_forgery

  def admin_only!
    if authenticate_user! && !current_user.admin?
      redirect_to(root_path, :alert => "You're not allowed here! Are you sure you're an admin?")
    end
  end
end
