Debateaberto::Application.routes.draw do
  devise_scope :usuario do
    # login/logout
    get '/entrar' => 'devise/sessions#new', as: :nova_sessao
    post '/entrar' => 'devise/sessions#new', as: :criar_sessao
    delete '/sair' => 'devise/sessions#destroy', as: :destruir_sessao
    
    # resetar/trocar senha
    get '/senha/nova' => 'devise/passwords#new', as: :nova_senha
    post '/senha/nova' => 'devise/passwords#create', as: :criar_senha
    get '/senha/editar' => 'devise/passwords#edit', as: :editar_senha
    put '/senha/editar' => 'devise/passwords#update', as: :atualizar_senha

    # configurações do usuário
    get '/cadastro' => 'devise/registrations#new', as: :novo_usuario
    post '/cadastro' => 'devise/registrations#create', as: :criar_usuario
    get '/editar' => 'devise/registrations#edit', as: :editar_usuario
    post '' => 'devise/registrations#update', as: :atualizar_usuario
    get '/cancelar' => 'devise/registrations#cancel', as: :cancelar_usuario
    delete '' => 'devise/registrations#destroy', as: :destruir_usuario
  end

  root to: 'home#index'
end
