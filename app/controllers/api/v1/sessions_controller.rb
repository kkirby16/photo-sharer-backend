class Api::V1::SessionsController < ApplicationController
  before_action :authenticate_user, except: :create

  def create
    @user = User.find_by(username: params[:session][:username])

    if @user && @user.authenticate(params[:session][:password])
      #session[:user_id] = @user.id #this logs the user in. putting the user's id in the session hash.
      token = build_jwt(@user.id) #return token to the user once they've logged in.
      logger.info "User Token: #{token.inspect}"

      render json: { user: @user, token: token }, status: 201
    else
      render json: {
               error: "Invalid Credentials",
             }, status: 401
    end
  end

  def get_current_user
    render json: current_user
  end

  def destroy
    session.clear #.clear returns an empty hash when used on a hash.
    render json: {
      notice: "Successfully logged out.", #kinda just returning a notice here.
    }, status: :ok
  end

  private

  def build_jwt(user_id, valid_for_minutes = 1440) #building the token. want to check that both the iss and aud are the same thing we encoded for the user.
    exp = Time.now.to_i + (valid_for_minutes * 60)
    payload = {
      "iss": "fusionauth.io",
      "aud": "238d4793-70de-4183-9707-48ed8ecd19d9",
      "exp": exp,
      "user_id": user_id,
    }

    JWT.encode payload, Rails.application.secrets.secret_key_base, "HS256"
  end
end
