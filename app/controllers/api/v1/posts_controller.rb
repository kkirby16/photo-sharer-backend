class Api::V1::PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc)
    render json: @posts
  end

  def create
    post = Post.new(post_params)

    if params[:file]
      post.image.attach(params[:file])
      image_url = url_for(post.image)
    end

    if post.save
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
    params.permit(:image, :user_id, :caption)
  end
end

#want to get all posts on load. next up, add actions, reducers, state and props needed for this to happen
