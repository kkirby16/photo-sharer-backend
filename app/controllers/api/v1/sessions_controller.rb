class Api::V1::SessionsController < ApplicationController
  def create
    @user = User.find_by(username: params[:session][:username])
  end
end
