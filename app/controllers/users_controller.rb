class UsersController < ApplicationController
  
  def index
    @users = if params[:terms]
      User.where(name: params[:terms])
    elsif params[:specific]
       User.select(:name).distinct

    else
      User.all

    end
  end
 
  def show
    @user = User.find(params[:id])
    respond_to do |format|
      format.html
      format.pdf do
        
        pdf = UserPdf.new(@user)
        send_data pdf.render, filename:"user_#{@user.name}.pdf",
                            type: "application/pdf",
                            disposition: "inline"
      end
    end
  end
 
  def edit
    @user = User.find(params[:id])
  end
 
  def new
    @user = User.new
    @address = @user.build_address 
  end

  def create
    @user = User.new(user_params)

    if @user.save      
      flash[:success] = "User created!"
      redirect_to @user
    else
      render 'new'      
    end    
  end
 
  def update
    @user = User.find(params[:id])
    @address = @user.address 
 
    if @user.update(user_params)
      redirect_to @user
    else
      render 'edit'
    end
  end
 
  def destroy
    @user = User.find(params[:id])
    @user.destroy
 
    redirect_to users_path
  end
 
  private
    def user_params
      params.require(:user).permit(:name, :gender,:enabled, address_attributes: [:id, :state, :city,:street, :doornumber,:terms ])
    end
end



