class Api::V1::CommentsController < ApplicationController
  before_action :authenticate_user

  def create
    @post = Post.find(params[:post_id])
    #could use created at for the date.
    @comment = Comment.create({ user_id: current_user.id, post_id: @post.id, text: params[:comment] })
    @post.comments.push(@comment)
    @post.save
    render json: @comment #rendering the json object for this comment so our front end gets it and can use it.
  end

  def destroy
    @comment = Comment.find_by(id: params[:id])
    @comment.destroy
  end
end
