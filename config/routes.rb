Rails.application.routes.draw do
  resources :parking_histories, only: [:index, :create, :show]
  resources :users, only: [:index, :create, :show, :destroy]
  resources :parking_locations, only: [:index, :create, :show]
  root 'rails/info#routes'

  post '/auth/', to: 'authentications#show'
  #match '/auth/:username', to: 'show_by_username_and_password', controller: 'authentications', method: post
end
