Rails.application.routes.draw do
  get '/getting_started'  =>"greeters#help"
  root :to => "greeters#help"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
