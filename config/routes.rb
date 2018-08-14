Rails.application.routes.draw do
  root "kitchens#index"
  devise_for :users
  # root to: '/kitchens'
  resources :kitchens do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, except:[:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
