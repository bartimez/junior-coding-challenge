class PostsController < ApplicationController
  # make our posts helper fns available here
  include PostsHelper

  def index
    # Return all `Post`
    # Mark posts as an instance-level var so all posts are accessible both here and in the view 
    @posts = Post.all
  end

  def new
    # Return view to create a new Post
    # this is what loads the create-new-post form
    @post = Post.new
  end

  def create
    # Add a new `Post` to the database
    # this is what handles the user-entered form data
    @post = Post.new(post_params)
    @post.save

    flash.notice = "Post created!"

    redirect_to post_path(@post)
  end

  def show
    # Show a single `Post`
    # params method returns a hash (obj-ish) of the request params, w/an ID key
    @post = Post.find(params[:id])

    @comment = Comment.new
    # id attribute must be manually assigned (not passed) b/c of Rails' mass-assignment protection
    @comment.post_id = @post.id
  end

  def destroy
    # Remove a `Post` from the database
    @post = Post.find(params[:id])
    @post.destroy

    flash.notice = "Post deleted!"

    redirect_to posts_path
  end
end
