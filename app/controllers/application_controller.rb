class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :update_allowed_parameters, if: :devise_controller?

  protected
    
  def update_allowed_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[fname lname image])
    devise_parameter_sanitizer.permit(:account_update, keys: %i[fname lname image])
  end
end
