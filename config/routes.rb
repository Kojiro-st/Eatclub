Rails.application.routes.draw do
  devise_for :shop
  root "messages#index"
  resources :shop, only: [:edit, :update]
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "messages#index"
  resources :users, only: [:edit, :update]
end
