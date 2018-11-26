Rails.application.routes.draw do
  
	root:to => 'book#page_1'
		get 'book/page_2'
		get 'book/page_3'
		get 'book/home'
		get 'book/services'
		get 'book/contact'
  	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
