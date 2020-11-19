Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  namespace :api, defaults: {format: :json} do
    resource :user, only: [:create, :show]
    resource :session, only: [:create, :destroy, :show]
    resources :categories, only: [:show, :index]
    resources :products, only: [:index, :show]
    resources :products_search, only: [:index]
    resources :carts, only: [:create, :destroy, :show]
    resources :cart_items, only: [:create, :destroy, :show]
  end
  root to: "static_pages#root"
end
