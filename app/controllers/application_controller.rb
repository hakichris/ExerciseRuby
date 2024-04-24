class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: %i[email name password password_confirmation])
      end

      protected
      def after_sign_in_path_for(resource)
        if resource.is_a?(User)
        user_customer_orders_path(resource)
        end 
      end 
      def  after_sign_up_path_for(resource)
        if resource.is_a?(User)
        new_user_session_path(resource)
        end 
      end 

end
