Rails.application.routes.draw do
	get 'users/index' => 'users#index'
	get 'users/new' => 'users#new'
	post 'users/:id/create' => 'users#create'

  get 'posts/index' => 'posts#index'
	get 'posts/new' => 'posts#new'
	get 'posts/:id' => 'posts#show'
	get 'posts/:id/edit' => 'posts#edit'
	post 'posts/create' => 'posts#create'
	post 'posts/:id/update' => 'posts#update'
	post 'posts/:id/destroy' => 'posts#destroy'

  get '/' => 'home#top'
  get '/about' => 'home#about'
end
