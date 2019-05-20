class PostsController < ApplicationController
before_action :set_post, only: [:show, :edit, :update, :destroy]

  def index
    @posts = Post.pagination_request(params[:page])
    respond_to  do |format|
      format.html
      format.js
    end
  end

  def new
    @post = Post.new
  end

  def show
  end

  def edit
  end

  def create
    @post = Post.new(post_params)
    # binding.pry
    if @post.save
      redirect_to posts_path
    else
      render 'new'
    end
  end

  def update
    # binding.pry
    if @post.update(post_params)
      redirect_to posts_path
    else
      render 'edit'
    end
  end

  def destroy
    if @post.destroy
      redirect_to posts_path
    end
  end

  private

  def set_post
    @post = POst.find(params[:id])
  end

  def post_params
    params.require(:post).permit(:post)
  end

end
