class ApplicationController < ActionController::Base

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  helper Railsui::ThemeHelper

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar, :name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:avatar, :name])
  end

end
