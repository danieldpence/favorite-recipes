class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # devise_parameter_sanitizer.permit(:sign_up, keys: [:email]) # add :full_name, etc later
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar]) # add :full_name, etc later
  end

  def after_sign_in_path_for(resource)
    stored_location_for(resource) || recipes_path
  end
end
