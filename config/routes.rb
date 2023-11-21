Rails.application.routes.draw do
  root to: "emotions#index"

  resources :emotions do
    resources :bookings, except: :destroy do
      resources :ratings, only: %i[new create]
    end
  end
  resources :bookings, only: :destroy

  devise_for :users

  resources :users do
    resources :inquiries, only: %i[index show new create]
  end
end
