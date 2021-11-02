class ApplicationController < ActionController::Base
  def validate_admin
    unless current_user&.is_admin
      flash.alert = "Not authorized."
      redirect_to root_path
    end
  end
end
