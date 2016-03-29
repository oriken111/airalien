class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :initialize_omniauth_state

protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :fullname
    devise_parameter_sanitizer.for(:account_update) << :image << :fullname << :phone_number << :description << :email << :password
  end

  def initialize_omniauth_state
    session['omniauth.state'] = response.headers['X-CSRF-Token'] = form_authenticity_token
  end

end
