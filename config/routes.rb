Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :omniauth_callbacks => "users/omniauth_callbacks"
  }
  devise_scope :user do
    get 'sign_in', :to => 'devise/sessions#new'
    delete 'sign_out', :to => 'devise/sessions#destroy'
  end
  root "application#welcome"
end
