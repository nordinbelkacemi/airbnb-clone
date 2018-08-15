Rails.application.routes.draw do
  root "kitchens#index"
  devise_for :users
  resources :kitchens do
    resources :bookings, only: [:new, :create]
  end
  resources :bookings, except: [:new, :create]
end
