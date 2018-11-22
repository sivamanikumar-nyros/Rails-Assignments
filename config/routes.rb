Rails.application.routes.draw do
  resources :posts
  resources :projects

  get 'posts/index'
  get 'posts/_form'
  get 'posts/post'
  get 'posts/edit'
  get 'posts/new'
  get 'posts/show'


  get 'welcome/bikes'
  get 'welcome/gear'
  get 'welcome/services'
  get 'welcome/index'
  get '/getting_started'  =>"greeters#help"
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
