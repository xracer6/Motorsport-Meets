Rails.application.routes.draw do
  root 'homes#index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/intro', to: 'homes#index'
  get '/tracks', to: 'homes#index'
  get '/tracks/:id', to: 'homes#index'
  get '/events', to: 'homes#index'
  get '/cars', to: 'homes#index'


  namespace :api do
    namespace :v1 do
      resources :intro, only: [:index, :show]
      resources :tracks, only: [:index, :show]
      resources :events, only: [:index, :show, :new, :create]
      resources :cars, only: [:index, :show, :new, :create]
    end
  end
end
