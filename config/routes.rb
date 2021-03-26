Rails.application.routes.draw do
  get 'posts/index' => 'posts#index'
	get 'posts/new' => 'posts#new'
	get 'posts/:id' => 'posts#show'
	get 'posts/:id/edit' => 'posts#edit'
	post 'posts/create' => 'posts#create'
	post 'posts/:id/update' => 'posts#update'

  get '/' => 'home#top'
  get '/about' => 'home#about'
end
