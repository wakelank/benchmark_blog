class PostsController < ApplicationController
  caches_page :index
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  
end
