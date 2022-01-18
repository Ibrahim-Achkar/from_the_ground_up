class ApplicationController < ActionController::Base
  # before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(_resource)
    dashboard_path
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end

  protected

  def configure_permitted_parameters
    attributes = %i[username photo]
    devise_parameter_sanitizer.permit(:sign_up, keys: [attributes])
    devise_parameter_sanitizer.permit(:account_update, keys: [attributes])
  end
end
