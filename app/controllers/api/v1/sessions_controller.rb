class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:session][:username])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id #this logs the user in. putting the user's id in the session hash.
      render json: @user
    else
      render json: {
               error: "Invalid Credentials",
             }
    end
  end
end
