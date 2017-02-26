class PostsController < ApplicationController
  def show
    @post = Post.find(params[:id])
  end

  def new
  end

  def index
    @posts = Posts.all
  end

  def create
    byebug
    @post = Post.new(post_params)

    @post.save
    redirect_to @post
  end

  private
  def post_params
    params.require(:post).permit(:title, :text)
  end
end
