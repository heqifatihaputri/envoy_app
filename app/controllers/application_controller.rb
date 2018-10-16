class ApplicationController < ActionController::Base
  # before_action :redirect_by_role
  def after_sign_in_path_for(resource)
    case current_user.role.name
      when "deliveries"
      deliveries_dash_path
      when "visitors"
      visitors_dash_path
    end
  end

  # def redirect_by_role
  #   if current_user.present?
  #     if current_user.role.name == "deliveries"
  #       redirect_to "/dashboard/deliveries_dash"
  #     else
  #       redirect_to "/dashboard/visitors_dash"
  #     end
  #   end
  # end
end
