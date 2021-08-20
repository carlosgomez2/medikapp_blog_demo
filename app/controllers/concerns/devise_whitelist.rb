module DeviseWhitelist
  extend ActiveSupport::Concern

  included do
    # include callback
    before_action :configure_permitted_parameters, if: :devise_controller?
  end

  def configure_permitted_parameters
    registration_params = [:name, :email, :password, :password_confirmation]

    if params[:action] == 'update'
      devise_parameter_sanitizer.permit(:account_update) do |u| 
        u.permit(registration_params << :current_password)
      end
    elsif params[:action] == 'create'
      devise_parameter_sanitizer.permit(:sign_up) do |u| 
        u.permit(registration_params) 
      end
    end
  end
end