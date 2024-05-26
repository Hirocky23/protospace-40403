class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def new
    # 処理は後で書く
  end

  def create
    # 処理は後で書く
  end

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :profile, :occupation, :position, :hoge])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :profile, :occupation, :position, :hoge])
  end
end