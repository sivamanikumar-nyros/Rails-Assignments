class ApplicationController < ActionController::Base
	#rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
	protect_from_forgery with: :exception
	before_action :authorize
	
	protected
	def authorize
		unless Customer.find_by(id: session[:customer_id])
			redirect_to login_path, notice:"you trying to access without permit ? Lol"
		end
	end
		
	def customer_is_logged_in?
    	Customer.find_by(id: session[:customer_id])
	end
	private
 
    def record_not_found
      render file: 'public/404', status: :not_found    
	end
	
end
