class ApplicationController < ActionController::Base

  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_searcher!
  # load_and_authorize_resource

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name,
                                                       :email,
                                                       :encrypted_password,
                                                       :reset_password_token,
                                                       :contact,
                                                       :address,
                                                       :searcher_type])

  end

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
end
