class Api::V1::PostsController < ApplicationController
  def index
    #is there an incoming user id?
    #but does that matter (maybe this doesn't matter for me?)? do we always want just the current user's trips?
    # if logged_in?

    @posts = Post.order(created_at: :desc)

    # render json: @posts

    # posts_json = PostSerializer.new(@posts).serializable_hash.to_json

    render json: @posts

    # render json: { posts: [] }
    # else
    #   render json: {
    #            error: "You must be logged in to see posts.",
    #          }
    # end
  end

  def create
    post = Post.new(post_params)

    if params[:file]
      post.image.attach(params[:file])
      image_url = url_for(post.image)
    end

    # if post.save(image: image_url)

    if post.save
      # post_json = PostSerializer.new(post).serializable_hash.to_json
      render json: post, status: :ok
    else
      render json: { errors: post.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
  end

  private

  def post_params
    params.permit(:image, :user_id, :caption) #should i permit comments as well? I took out :likes from params.permit
  end
end

#on our frontend we need to sort of handle this now.
#want to get all posts on load. next up, add actions, reducers, state and props needed for this to happen
