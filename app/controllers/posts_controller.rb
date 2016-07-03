class PostsController < ApplicationController
  caches_page :index
  def index
    @posts = Post.all_cached
  end

  def show
    @post = Post.find(params[:id])
  end

  
end
