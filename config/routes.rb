Rails.application.routes.draw do
  resources :complaint_addresses
  resources :public_places
  resources :neighborhoods
  resources :cities
  resources :states
  resources :messages
  resources :complaints
  resources :users
  resources :user_types
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
