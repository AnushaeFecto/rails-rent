Rails.application.routes.draw do

  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show]

  resources :items do
    resources :rentals, only: :create
  end


end
