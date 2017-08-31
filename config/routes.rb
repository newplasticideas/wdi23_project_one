Rails.application.routes.draw do
	root :to => 'pages#home'
  resources :friendships, only: [:create, :update, :destroy]
	resources :users
	get '/images/:id/default' => 'images#set_default'
	post '/images/:id/default' => 'images#set_default'
	resources :images do
		resources :comments, module: :images
	end
	resources :profiles do
		resources :comments, module: :profiles
	end
	get '/login' => 'session#new'
	post '/login' => 'session#create'
	get '/home' => 'session#home'
	delete '/login' => 'session#destroy'
	get '/profiles/:id' => 'users#profile'
	get '/profiles/:id/edit' => 'profiles#edit'
	get '/findfriends' => 'friendships#index'
	resources :comments
	get '/users/index' => 'users#index'

end
