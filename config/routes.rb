require 'subdomain'

Debateaberto::Application.routes.draw do
  post '/canais', to: 'canais#create'
  put '/canais/:id', to: 'canais#update', as: :canal
  delete '/canais/:id', to: 'canais#destroy'

  constraints(Subdomain::Principal) do
    get '/canais', to: 'canais#index'
    get '/canais/novo', to: 'canais#new', as: :new_canal
  end

  constraints(Subdomain::Canal) do
    get '', to: 'canais#show'
    get '/editar', to: 'canais#edit', as: :edit_canal
  end

  devise_for :usuarios, skip: [:sessions, :passwords, :registrations],
    controllers: { omniauth_callbacks: 'usuarios/omniauth_callbacks' }

  devise_scope :usuario do
    # login/logout
    post '/entrar' => 'devise/sessions#create', as: :usuario_session
    delete '/sair' => 'devise/sessions#destroy', as: :destroy_usuario_session
    
    # resetar/trocar senha
    post '/recuperar_senha' => 'devise/passwords#create', as: :usuario_password
    get '/minha_conta/senha/editar' => 'devise/passwords#edit', as: :edit_usuario_password
    put '/minha_conta/senha/editar' => 'devise/passwords#update'

    # configurações do usuário
    post '/cadastrar' => 'devise/registrations#create', as: :usuario_registration
    get '/minha_conta/editar' => 'devise/registrations#edit', as: :edit_usuario_registration
    put '/minha_conta' => 'devise/registrations#update'
    get '/minha_conta/cancelar' => 'devise/registrations#cancel', as: :cancel_usuario_registration
    delete '/minha_conta' => 'devise/registrations#destroy'
  end

  root to: 'home#index'
end
