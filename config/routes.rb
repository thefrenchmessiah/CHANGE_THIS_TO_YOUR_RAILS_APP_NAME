Rails.application.routes.draw do
  root to: "emotions#index"

  resources :emotions do
    resources :bookings, except: :destroy
  end

  resources :bookings, only: :destroy

  devise_for :users
  resources :users
end
