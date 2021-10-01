class Api::V1::CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])

    #check for login of the user.
    #could use created at for the date.

    @comment = Comment.create({ user_id: current_user.id, post_id: @post.id, text: params[:comment] })

    @post.comments.push(@comment)
    @post.save

    # @post.comments.build({ user_id: @post.user, text: params[:comment] })
    render json: @comment
  end
end
