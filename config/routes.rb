Rails.application.routes.draw do
  
	root :to => 'pages#home'

	get 'pages/contact' 
  	get 'pages/about'
 	get 'pages/help'
	get 'users/new'
	

	match "/about", to: "pages#about", via: [:get]
	match "/contact", to: "pages#contact", via: [:get]
	match "/help", to: "pages#help", via: [:get]

	match "/signup", to: "users#new", via: [:get]

	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
