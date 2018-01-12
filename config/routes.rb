Rails.application.routes.draw do
  resources :users
  root 'rails/info#routes'
end
