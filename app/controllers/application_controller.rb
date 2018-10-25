class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
    if @user.role.name.include?('Global Admin')
      root_path
    else
      root_path
    end
  end

  # def configure_permitted_parameters
  #   # devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :email, :password, :password_confirmation, :role_id, locations: [:id, :company_name, :address]])
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :email, :password, :password_confirmation, :role_id, locations: [:id, :company_name, :address]])
  # end
end
