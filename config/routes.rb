Rails.application.routes.draw do
	resources :articles
	resources :users
	
	get 'users/index'
  get 'users/_form'
  get 'users/post'
  get 'users/edit'
  get 'users/new'
	get 'users/show'
	
 	root 'articles#index'
end