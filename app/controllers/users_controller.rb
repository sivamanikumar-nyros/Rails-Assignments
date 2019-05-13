class UsersController < ApplicationController
before_action :set_name, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
    respond_to  do |format|
      format.html
      format.js
    end
  end

  def new
    @user = User.new
  end

  def show
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    # binding.pry
    if @user.save
      redirect_to users_path
    else
      render 'new'
    end
  end

  def update
    # binding.pry
    if @user.update(user_params)
      redirect_to users_path
    else
      render 'edit'
    end
  end

  def destroy
    if @user.destroy
      redirect_to users_path
    end
  end

  private

  def set_name
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name)
  end

end