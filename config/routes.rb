Rails.application.routes.draw do 
	resources :articles
	resources :customers

  get 'users' => "users#index"

  get 'users/new' => "users#new"

  post 'users' => "users#create"

  get 'user/:user_id' => 'users#show', as:"user"

  get 'user/:user_id/edit' => 'users#edit', as: :edit_user

  patch 'user/:user_id' => "users#update"

  delete 'user/:user_id' => 'users#destroy'
  

  resources :articles do
    resources :comments
  end
	
   get 'sessions/destroy'
   get 'admin' => 'admin#index'
  
   controller :sessions do
     get 'login' => :new
     post 'login' => :create
     delete 'logout' =>:destroy
   end
   root 'admin#index'
end

