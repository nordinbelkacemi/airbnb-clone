Rails.application.routes.draw do
  root "kitchens#index"
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }
  get 'pages/dashboard', to: 'pages#dashboard', as: :dashboard
  get 'pages/profile/:id', to: 'pages#profile', as: :user_profile
  get 'pages/profile/:id/edit', to: 'pages#edit', as: :edit_user_profile
  patch 'pages/profile/:id', to: 'pages#update'
  resources :kitchens do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]
end
