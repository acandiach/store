Rails.application.routes.draw do
  resources :categories
  devise_for :users
  resources :products
  resources :orders
  resources :brands
  root to: "products#index"
end
