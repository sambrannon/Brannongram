class PostsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_post, only: [:show, :edit, :update, :destroy]
  before_action :owned_post, only: [:edit, :update, :destroy]

  def index
    @posts = Post.all
  end

  def show
  end

  def new
    @post = current_user.posts.build
  end

  def create
    @post = current_user.posts.build(post_params)

    if @post.save
      flash[:success] = "Your post has been created!"
      redirect_to posts_path
    else
      flash[:alert] = "Your new post could not be created! Please check the form"
      render :new
    end
  end

  def edit
  end

  def update
    if @post.update(post_params)
      flash[:success] = "Post updated!"
      redirect_to(post_path(@post))
    else
      flash[:alert] = "Update failed, please check the form."
      render :edit
    end
  end

  def destroy
    @post.destroy
    flash[:success] = "Post deleted."
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:image, :caption)
  end

  def set_post
    @post = Post.find(params[:id])
  end

  def owned_post
    unless current_user == @post.user
      flash[:alert] = "Tisk tisk, you're not allowed to do that."
      redirect_to root_path
    end
  end
end
