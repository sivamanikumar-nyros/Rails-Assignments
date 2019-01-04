class SessionsController < ApplicationController
	#skip_before_action :authorize
  def new
  end

  def create
  	customer = Customer.find_by(name: params[:name])
  	if customer and customer.authenticate(params[:password])
  		session[:customer_id] = customer.id
      session[:customer_name] = customer.name
  		redirect_to admin_url
  	else
  		redirect_to login_url,alert:"Invalid username or password"
  	end
    founder = Founder.find_by(name: params[:name])
    if founder and founder.authenticate(params[:password])
      session[:founder_id] = founder.id
      session[:founder_name] = founder.name
      redirect_to admin_url
    else
      redirect_to login_url,alert:"Invalid username or password"
    end
  end

  
  def destroy
  	session[:customer_id] = nil
    session[:customer_name] = nil
  	redirect_to login_url,alert:"Successfully logged out "
    

  end
end






