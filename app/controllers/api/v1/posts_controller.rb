class Api::V1::PostsController < ApplicationController
  def index
    #is there an incoming user id?
    #but does that matter (maybe this doesn't matter for me?)? do we always want just the current user's trips?
    if logged_in?
      @posts = Post.all

      render json: @posts
    else
      render json: {
               error: "You must be logged in to see posts.",
             }
    end
  end
end

#on our frontend we need to sort of handle this now.
#want to get all posts on load. next up, add actions, reducers, state and props needed for this to happen
