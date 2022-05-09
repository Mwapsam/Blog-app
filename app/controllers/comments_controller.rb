require 'rails_helper'

class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.new(text: comment_params[:text], author_id: current_user.id, post_id: @post.id)

    if @comment.save
      redirect_to "/users/#{@post.author_id}/posts/#{@post.id}", notice: 'Success!'
    else
      render :new, alert: 'Error occured!'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text).tap do |comment_params|
      comment_params.require(:text)
    end
  end
end
