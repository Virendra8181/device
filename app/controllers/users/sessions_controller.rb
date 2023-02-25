#frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  before_action :configure_sign_in_params, only: [:create]

 
  def new
    puts "New users initially"
    super
  end

 
  def create
    puts "create users"
    super
  end


  def destroy
    puts "users destroy"
    super
  end

  protected

  
  def configure_sign_in_params
    devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  end
end
