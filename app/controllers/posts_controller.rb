class PostsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @posts = Post.all.order(created_at: :desc).paginate(page: params[:page], per_page: 5)
  end

  def new 
    @post = Post.new
  end

  def create
   current_user.posts.create(post_params)
   redirect_to root_path
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.require(:post).permit(:name, :body)
  end

end
