class PostsController < ApplicationController
  def index
    # Return all `Post`
    # Mark posts as an instance-level var so all posts are accessible both here and in the view 
    @posts = Post.all
  end

  def new
    # Return view to create a new Post
  end

  def create
    # Add a new `Post` to the database
  end

  def destroy
    # Remove a `Post` from the database
  end
end
