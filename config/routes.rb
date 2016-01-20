Rails.application.routes.draw do
  resources :items
  resources :lists
  resources :users
  get 'home/index'
  root 'home#index'
end
