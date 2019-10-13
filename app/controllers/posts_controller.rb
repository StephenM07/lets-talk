class PostsController < ApplicationController

  def index
    @posts = Post.all().paginate(page: params[:page], per_page: 5)
  end

  def new 
    @post = Post.new
  end
end
