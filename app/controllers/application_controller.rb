class ApplicationController < ActionController::Base
	protect_from_forgery with: :exception
	before_action :authorize
	protected
	def authorize
			unless Customer.find_by(id: session[:customer_id])
				redirect_to login_path, notice:"you trying to access without permit ? Lol"
		end
	end	
end
