Rails.application.routes.draw do
  root "kitchens#index"
  devise_for :users
  get 'pages/dashboard', to: 'pages#dashboard', as: :dashboard
  get 'pages/profile/:id', to: 'pages#profile', as: :user_profile
  resources :kitchens do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]
end
