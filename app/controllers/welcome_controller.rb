class WelcomeController < ApplicationController
  def index
    @articles = if params[:term]
      Article.where('name LIKE ?',"%#{params[:term]}%")

    else
      Article.all
    end
  end
 
  def show
    @article = Article.find(params[:id])
  end
 
  def new
    @article = Article.new
  end
 
  def edit
    @article = Article.find(params[:id])
  end
 
  def create
    @article = Article.new(article_params)
 
    if @article.save
      redirect_to @article
    else
      render 'new'
    end
  end
 
  def update
    @article = Article.find(params[:id])
 
    if @article.update(article_params)
      redirect_to @article
    else
      render 'edit'
    end
  end
 
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
 
    redirect_to articles_path
  end
 
  private
    def article_params
      params.require(:article).permit(:name, :description ,:category_id,:author_id , :checkbox,:term)
    end

    def index
    @users = if params[:terms]
      User.where('name LIKE ?',"%#{params[:terms]}%")
    else
      User.all
    end
  end
 
 
  def show
    @user = User.find(params[:id])
  end
 
  def new
    @user = User.new
  end
 
  def edit
    @user = User.find(params[:id])
  end
 
  def create
    @user = User.new(user_params)
 
    if @user.save
      redirect_to @user
    else
      render 'new'
    end
  end
 
  def update
    @user = User.find(params[:id])
 
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
      params.require(:user).permit(:name, :gender,:enabled,:state,:city,:doornumber,:terms)
    end
end
