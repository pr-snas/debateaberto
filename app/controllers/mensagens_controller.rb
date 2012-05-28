class MensagensController < ApplicationController
  load_and_authorize_resource

  def create
    @canal = Canal.find_by_path!(request.subdomain)
    @mensagem.canal = @canal
    @mensagem.usuario = current_usuario
    @mensagem.save
    @mensagem
  end

  def destroy
    @mensagem.destroy
    redirect_to root_url(subdomain: @mensagem.canal.path)
  end
end
