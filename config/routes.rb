Rails.application.routes.draw do
  resources :items
  resources :lists
  resources :users
  get 'home/index'
  root 'home#index'

  namespace :api, defaults: { format: :json } do
    resources :users
  end
end
