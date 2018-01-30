Rails.application.routes.draw do
  resources :parking_histories
  resources :authentications, path: '/auth', param: :username, except: :show
  resources :users
  resources :parking_locations
  root 'rails/info#routes'

  post '/auth/:username', to: 'authentications#show_by_username_and_password'
  #match '/auth/:username', to: 'show_by_username_and_password', controller: 'authentications', method: post
end
