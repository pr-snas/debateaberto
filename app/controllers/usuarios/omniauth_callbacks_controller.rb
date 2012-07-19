class Usuarios::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    auth_user
  end

  def failure
    render layout: false
  end

  protected
  def auth_hash
    env['omniauth.auth']
  end

  def auth_user
    @usuario = Usuario.find_or_create_from_auth_hash(auth_hash)
    sign_in @usuario
    render json: @usuario
  end
end
