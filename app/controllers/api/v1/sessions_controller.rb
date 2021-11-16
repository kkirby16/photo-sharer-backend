class Api::V1::SessionsController < ApplicationController
  before_action :authenticate_user, except: :create

  def create
    @user = User.find_by(username: params[:session][:username])

    if @user && @user.authenticate(params[:session][:password])
      session[:user_id] = @user.id #this logs the user in. putting the user's id in the session hash.
      logger.info "User Id: #{session[:user_id].inspect}"

      render json: @user, status: :ok
    else
      render json: {
               error: "Invalid Credentials",
             }, status: 401
    end
  end

  def get_current_user
    if logged_in?
      render json: current_user
    else
      render json: {
               error: "No one logged in",
             }, status: 401
    end
  end

  def destroy
    session.clear #.clear returns an empty hash when used on a hash.
    render json: {
      notice: "Successfully logged out.", #kinda just returning a notice here.
    }, status: :ok
  end
end
