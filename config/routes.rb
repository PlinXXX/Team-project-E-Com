Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    # namespace :admin do
    #   resources :users
    #   resources :carts
    #   resources :items
    #   resources :item_to_carts
    #   resources :orders

    #   root to: "users#index"
    # end
	devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
  resources :users, only: [:show, :edit, :update] do
  	resources :avatar, only: [:create]
  	resources :carts, only: [:show]
  	resources :items do
  		resources :item_to_carts
  	end
    resources :order
  end

  resources :confirmation, only: [:update]
  
  get '/presentation/team'
	root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end