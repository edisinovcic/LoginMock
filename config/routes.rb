Rails.application.routes.draw do
  resources :users
  resources :parking_locations
  root 'rails/info#routes'
end
