Rails.application.routes.draw do
  root "kitchens#index"
  devise_for :users
  get 'pages/profile', to: 'pages#profile', as: :dashboard
  resources :kitchens do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]
end
