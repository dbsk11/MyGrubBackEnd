Rails.application.routes.draw do
  resources :users_carts, only: [:index, :show]
  resources :cart_items, only: [:index, :create, :update, :delete]
  resources :items, only: [:index, :show]
  resources :restaurant_menus, only: [:index, :show]

  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
