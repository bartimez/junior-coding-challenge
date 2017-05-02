class CommentsController < ApplicationController
  # make our comments helper fns available here
  include CommentsHelper

  def create
    # Add a new `Comment`
    @comment = Comment.new(comment_params)
    @comment.post_id = params[:post_id]

    @comment.save

    # redirect to the whole `Post`, not just the `Comment`
    redirect_to post_path(@comment.post)
  end

  def edit
    # Return view for editing the `Comment`
    @comment = Comment.find(params[:id])
  end

  def update
    # Update a `Comment`
    @comment = Comment.find(params[:id])
    @comment.update(comment_params)

    redirect_to post_path(@comment.post)
  end

  def destroy
    # Remove a `Comment` from the database
    @comment = Comment.find(params[:id])
    @comment.destroy

    redirect_to post_path(@comment.post)
  end
end
