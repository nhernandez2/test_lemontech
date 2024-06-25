class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

     before_action :configure_permitted_parameters, if: :devise_controller?
     before_action :set_maps_key

     protected

          def configure_permitted_parameters
               devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :age, :email, :password, :current_password)}
          end

          def set_maps_key
               @maps_key = Rails.application.credentials[:MAPS_API_KEY]
          end



end
