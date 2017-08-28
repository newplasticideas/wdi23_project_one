Rails.application.routes.draw do
  resources :friendships, only: [:create, :update, :destroy]

	root :to => 'pages#home'
	resources :users

	get '/login' => 'session#new'
	post '/login' => 'session#create'
	get '/home' => 'session#home'
	delete '/login' => 'session#destroy'
	# get '/editprofile/:id' => 'session#edit'
end
