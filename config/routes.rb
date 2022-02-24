Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :buddies, only: [:index, :show] do
    resources :bookings
  end
  # resources :users, only: [:new, :create, :destroy, :update, :edit]
  get "dashboard", to: 'pages#dashboard'
end
