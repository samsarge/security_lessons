class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: user_fields)
    devise_parameter_sanitizer.permit(:account_update, keys: user_fields)
  end

  def user_fields
    [
      :email,
      :encrypted_password,
      :reset_password_token,
      :reset_password_sent_at,
      :remember_created_at,
      :sign_in_count,
      :current_sign_in_at,
      :last_sign_in_at,
      :current_sign_in_ip,
      :last_sign_in_ip,
      :created_at,
      :updated_at,
      :name,
      :manager,
      :organisation_id,
      :salary,
      :organisation_name
    ]
  end
end
