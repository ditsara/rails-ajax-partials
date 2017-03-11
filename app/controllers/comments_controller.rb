class CommentsController < ApplicationController
  layout :resolve_layout

  def index
    @comments = Comment.root
  end

  def create
    @comment = Comment.new comment_params
    if @comment.save
      flash['notice'] = 'Comment added.'
      redirect_to action: :index
    else
      flash.now['alert'] = @comment.errors.full_messages
      render 'new'
    end
  end

  before_action :set_comment, only: [:show, :update, :destroy]

  def show
    @comment
  end

  def update
    @comment.assign_attributes comment_params
    if @comment.save
      flash['notice'] = 'Comment updated.'
      redirect_to action: :index
    else
      flash.now['alert'] = @comment.errors.full_messages
      render 'show'
    end
  end

  def destroy
    @comment.destroy
  end

  private

  def set_comment
    @comment = Comment.find(params[:id])
  end

  def comment_params
    params.require(:comment).permit(:title, :content, :parent_id)
  end

  def resolve_layout
    return false if request.xhr?
    'application'
  end
end
