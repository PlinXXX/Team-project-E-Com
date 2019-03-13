Rails.application.routes.draw do
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
  
  get '/presentation/team'
	root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end