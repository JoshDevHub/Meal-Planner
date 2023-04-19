require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

  before_action :authenticate_user!
  before_action :configure_sign_up_parameters, if: :devise_controller?
  before_action :configure_user_update_parameters, if: :devise_controller?

  protected

  def configure_sign_up_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[username])
  end

  def configure_user_update_parameters
    devise_parameter_sanitizer.permit(:account_update, keys: %i[username])
  end
end
