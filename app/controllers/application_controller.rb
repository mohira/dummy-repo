class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :image, :sex])
      devise_parameter_sanitizer.permit(:account_update, keys: [:name, :image, :sex])


      # devise_parameter_sanitizer.for(:accept_invitation).concat [:name]


      # devise_parameter_sanitizer.for(:invite) { |u| u.permit(:email, :name) }
      # devise_parameter_sanitizer.for(:accept_invitation) { |u| u.permit(:password, :password_confirmation, :invitation_token, :name) }




  devise_parameter_sanitizer.permit(:accept_invitation, keys: [:name, :image, :sex])








    end

end
