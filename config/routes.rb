Rails.application.routes.draw do
  devise_for :admins
  resources :products
  devise_for :users
  resources :users
  resources :wishlist
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

   root to: "products#index"

end
