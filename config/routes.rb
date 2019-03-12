Rails.application.routes.draw do
<<<<<<< HEAD
	devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
=======
  devise_for :users
  resources :home
>>>>>>> 1d983bb9f9d03e346d1943392e0144424e36180c
  
  get '/presentation/team'
	root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
