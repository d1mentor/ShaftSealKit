Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root 'cutaway#index'
  get '/privacy_policy', to: "cutaway#privacy_policy"
  get '/terms_of_service', to: "cutaway#terms_of_service"
  post '/send_form', to: "cutaway#send_form"
end
