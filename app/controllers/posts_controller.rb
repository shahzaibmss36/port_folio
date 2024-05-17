class PostsController < ApplicationController
  def post
    @posts = Post.where(category: params[:category])
  end
  def home
  end
  def marketing
  end
  def contact
  end
  def show
    @post = Post.find(params[:id])
  end  
end
