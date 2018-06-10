Rails.application.routes.draw do
	root :to => 'pages#home'

	#exemple donnés par le tutoriel. Semble osbsolète

	#match "/about", to: "pages#about", via: [:get]
	#match "/contact", to: "pages#contact", via: [:get]
	#match "/help", to: "pages#help", via: [:get]

	#Suggéré automatiquement par la commande rails s
	#get 'pages#home'
	#get 'pages#about'
	#get 'pages#contact'
	#get 'pages#help'


  #get 'admin/imad'
  #get 'admin/musfi'
  get 'pages/contact' 
  get 'pages/about'
  get 'pages/help'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
