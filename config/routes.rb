Rails.application.routes.draw do

	devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
    get '/presentation/team'
	root 'home#index'
	get '/home/:id', to:'home#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
