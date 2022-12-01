class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?
    before_action :set_get

    def set_get
        @user=current_user
    end

    protected
  
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:account_update) do |u|
            u.permit(:name,:image, :email, :password, :current_password)
          end
    end


end
