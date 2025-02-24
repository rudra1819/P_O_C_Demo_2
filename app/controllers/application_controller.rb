class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
  
    protected
  
    def configure_permitted_parameters
      # Permit additional fields for sign up and account update
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :bio])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :bio])
    end
  end
  