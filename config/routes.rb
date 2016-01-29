Rails.application.routes.draw do


  get 'home/index'
  root 'home#index'

  namespace :api, defaults: { format: :json } do
    resources :users do
        resources :lists
      end

      resources :lists, only: [] do
        resources :items, only: [:update, :create, :DELETE]
      end

      resources :items, only: [:destroy, :create, :update]
  end
end
