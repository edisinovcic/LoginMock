Rails.application.routes.draw do
  resources :authentications, path: '/auth'
  resources :users
  resources :parking_locations
  root 'rails/info#routes'
end
