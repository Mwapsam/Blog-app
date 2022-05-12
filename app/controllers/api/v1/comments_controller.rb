class Api::V1::CommentsController < ApplicationController
    def index
      @post = Post.find(params[:post_id])
      @comments = @post.comments.all
      render json: @comments
    end
  
    def create
      @post = Post.find(params[:post_id])
      @comment = @post.comments.new(comment_params)
  
      if @comment.save
        render json: @comment, status: :created, location: @comment
      else
        render json: @comment.errors, status: :unprocessable_entity
      end
    end
  
    private
  
    def comment_params
      params.require(:comment).permit(:text, current_user.id == :author_id)
    end
end