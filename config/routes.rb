Rails.application.routes.draw do
  devise_for :users
  resources :products
  resources :brands
  root to: "products#index"
end
