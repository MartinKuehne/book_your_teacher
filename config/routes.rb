Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lessons do
    resources :bookings, only: :create
  end
  get "/dashboard", to: 'pages#dashboard'
  get "/profile", to: 'pages#profile'
  #  we need to create profil route
  resources :bookings, except: :create
end
