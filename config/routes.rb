Rails.application.routes.draw do
  resources :offers
  resources :bids
  resources :kits
  resources :products
  resources :spare_parts
  resources :categories
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'cutaway#index'
  get '/home', to: "messanger#home"
  get '/chat', to: "messanger#chat"
  get '/settings', to: "messanger#settings"
  get '/privacy_policy', to: "cutaway#privacy_policy"
  get '/terms_of_service', to: "cutaway#terms_of_service"
  post '/send_form', to: "cutaway#send_form"
end
