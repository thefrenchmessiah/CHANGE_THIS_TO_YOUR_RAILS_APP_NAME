Rails.application.routes.draw do
  get 'ratings/new'
  get 'ratings/create'
  get 'inquiries/index'
  get 'inquiries/show'
  get 'inquiries/new'
  get 'inquiries/create'
  root to: "emotions#index"

  resources :emotions do
    resources :bookings, except: :destroy
  end
  resources :bookings, only: :destroy

  devise_for :users

  resources :users do
    resources :inquiries, only: %i[index show new create]
  end
end
