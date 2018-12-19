class ArticlesController < ApplicationController
  def index
    @articles = if params[:term]
      Article.where(name: params[:term])
    elsif params[:not]
      Article.where.not('name LIKE ?',"%#{params[:not]}")
    elsif params[:count]
      Article.all.includes(:author).where(authors: {name: params[:count]})
    elsif params[:specific]
      @articles = Article.select(:name).distinct
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
      params.require(:article).permit(:name, :description ,:category_id,:author_id , :checkbox,:term,:attachment)
    end
end