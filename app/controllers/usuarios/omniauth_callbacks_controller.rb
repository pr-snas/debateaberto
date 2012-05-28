class Usuarios::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    auth_user
  end

  def failure
    render layout: false
  end

  protected
  def auth_hash
    request.env['omniauth.auth']
  end

  def auth_user
    @usuario = Usuario.find_or_create_from_auth_hash(auth_hash)
    sign_in @usuario
    render :load_dropdown, layout: false
  end
end
