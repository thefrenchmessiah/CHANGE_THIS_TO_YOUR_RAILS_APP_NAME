Rails.application.routes.draw do
  root to: "emotions#index"
  resources :emotions
  devise_for :users
  resources :users
  resources :bookings
end
