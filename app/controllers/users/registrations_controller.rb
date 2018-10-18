# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController

  # include ApplicationHelper

  # before_action :configure_sign_up_params, only: [:create]
  # before_action :configure_account_update_params, only: [:update]
  # before_action :configure_permitted_parameters

  # GET /resource/sign_up
  def new
    # @user = User.new
    # @location = @user.locations.build
    build_resource({})
    respond_with resource
  end

  # POST /resource
  def create
    # binding.pry
    # @user = User.new(sign_up_params)

    # # respond_to do |format|
    # @user.save
    # @location = @user.locations.create!
    build_resource(sign_up_params)

    if resource.save
      # @location = @user.locations.create!
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_up(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        respond_with resource, :location => after_sign_up_path_for(resource)
      end
    else
      # clean_up_passwords
      respond_with resource
    end
  end

  # GET /resource/edit
  # def edit
  #   super
  # end

  # PUT /resource
  # def update
  #   super
  # end

  # DELETE /resource
  # def destroy
  #   super
  # end

  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  # def cancel
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_up_params
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  # end

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_account_update_params
  #   devise_parameter_sanitizer.permit(:account_update, keys: [:attribute])
  # end

  # The path used after sign up.
  # def after_sign_up_path_for(resource)
  #   super(resource)
  # end

  # The path used after sign up for inactive accounts.
  # def after_inactive_sign_up_path_for(resource)
  #   super(resource)
  # end
  private

  # def configure_permitted_parameters
  #   devise_parameter_sanitizer.permit(:sign_up, keys: [:full_name, :email, :password, :password_confirmation, :role_id, locations_attributes: [:id, :company_name, :address]])
    # devise_parameter_sanitizer.for(:sign_up) { |u|
    #   u.permit(:full_name, :email, :password, :password_confirmation, :role_id, :location_attributes => [:id, :company_name, :address])
    # }
    # params.require(:user).permit(:full_name, :email, :password, :password_confirmation, :role_id, location_attributes: [:id, :company_name, :address])
  # end

  def sign_up_params
    params.require(:user).permit(:full_name, :email, :password, :password_confirmation, :role_id, :company_name, :address)
  end

  def account_update_params
    params.require(:user).permit(:full_name, :email, :password, :password_confirmation, :current_password)
  end
end
