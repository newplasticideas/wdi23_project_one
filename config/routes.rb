Rails.application.routes.draw do
	root :to => 'pages#home'
	resources :users

	get '/login' => 'session#new'
	post '/login' => 'session#create'
	get '/home' => 'session#home'
	post '/home' => 'session#home'
	# delete '/login' => 'session#destroy'
end
