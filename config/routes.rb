Rails.application.routes.draw do
  resources :users
  resources :parking_location
  root 'rails/info#routes'
end
