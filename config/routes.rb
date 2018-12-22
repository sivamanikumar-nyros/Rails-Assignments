Rails.application.routes.draw do
	resources :articles
	resources :users
	resources :customers
	get 'users/index'
  get 'users/_form'
  get 'users/post'
  get 'users/edit'
  get 'users/new'
	get 'users/show'

	get 'sessions/create'
  get 'sessions/destroy'

  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' =>:destroy
  end

	root 'admin#index'
end