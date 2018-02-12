Rails.application.routes.draw do
  resources :users, only: [:show]
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "application#welcome"

  #get "/login", :to => "sessions#new", :as => :login
  #match "/auth/:provider/callback", :to => "sessions#create"
  #match "/auth/failure", :to => "sessions#failure"

  get "/auth/facebook/callback" => "sessions#create"


end
