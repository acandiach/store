class ApplicationController < ActionController::Base
  # before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # def configure_permitted_parameters
  #   devise_parametters_sanitizer.permit(:sign_up, keys: [:email])
  # end

  def create_brands
    if !current_user.admin?
      redirect_to products_path, alert: "You do not have permission for this action"
    end
  end

  def create_products
    if !current_user.seller?
      redirect_to products_path, alert: "You do not have permission for this action"
    end
  end
end
