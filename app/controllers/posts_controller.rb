class PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts
  end

  def show
    @post = User.find(params[:user_id]).posts.find(params[:id])
  end
end
