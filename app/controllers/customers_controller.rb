class CustomersController < ApplicationController
  USER_ID, PASSWORD = "admin", "siva"
  before_action :authenticate, :only => [:index, :edit, :delete ]
  before_action :set_customer, only: [:show, :edit, :update, :destroy]
  skip_before_action :authorize,only: [:new,:create,:index]
  def index
    @customers = Customer.all
  end

  def show
  end

  
  def new
    @customer = Customer.new
  end

  
  def edit
  end

  
  def create
    @customer = Customer.new(customer_params)

    respond_to do |format|
      if @customer.save
        format.html { redirect_to login_path, notice: 'User was successfully created.' }
        format.json { render :show, status: :created, location: @customer }
      else
        format.html { render :new }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @customer.update(customer_params)
        format.html { redirect_to customers_path, notice: 'User was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer }
      else
        format.html { render :edit }
        format.json { render json: @customer.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def destroy
    @customer.destroy
    respond_to do |format|
      format.html { redirect_to customers_path, notice: 'User was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  
    def set_customer
      @customer = Customer.find(params[:id])
    end

    def authenticate
      authenticate_or_request_with_http_basic do |id, password| 
        id == USER_ID && password == PASSWORD
      end
    end
    
    def customer_params
      params.require(:customer).permit(:name, :password, :password_confirmation)
    end

    
end
