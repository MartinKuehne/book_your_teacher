Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lessons
  get "/dashboard", to: 'pages#dashboard'
  resources :bookings

  
  resources :users, only: [:show] do
    resources :languages, only: [:create]
  end

  resources :languages, only: [:destroy] do
    resources :user_languages, only: [:new, :create]
  end
end
