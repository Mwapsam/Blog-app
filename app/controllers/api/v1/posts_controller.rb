
class Api::V1::PostsController < ApplicationController
    def index
      @posts = Post.all
      render json: @posts
    end
  
    def show
      render json: @posts
    end
end