Rails.application.routes.draw do
	root :to => 'pages#home'
  resources :friendships, only: [:create, :update, :destroy]
	resources :users
	get '/images/:id/default' => 'images#set_default'
	post '/images/:id/default' => 'images#set_default'
	resources :images
	get '/login' => 'session#new'
	post '/login' => 'session#create'
	get '/home' => 'session#home'
	delete '/login' => 'session#destroy'
	get '/profile' => 'users#profile'

end
