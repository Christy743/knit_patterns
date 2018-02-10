Rails.application.routes.draw do
  resources :users, only: [:show]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#welcome"

  #get "/auth/facebook/callback" => "sessions#create"


end
