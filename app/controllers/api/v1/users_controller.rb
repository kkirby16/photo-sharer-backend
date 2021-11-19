class Api::V1::UsersController < ApplicationController
  before_action :authenticate_user, except: :create
  before_action :set_user, only: [:show, :update, :destroy]

  #  GET /users
  def index
    @users = User.all
    render json: @users
  end

  #  GET /users/1
  def show
    render json: @user
  end

  # POST /users
  def create
    @user = User.new(user_params)
    if @user.save
      #session[:user_id] = @user.id #session works when have frontend and backedn on rails app.

      token = build_jwt(@user.id) #return token to the user once they've logged in.
      logger.info "UUseer Token: #{token.inspect}"
      render json: { token: token, user: UserSerializer.new(@user).as_json }, status: :created
    else
      resp = {
        error: @user.errors.full_messages.to_sentence,
      }
      render json: resp, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  #Only allow a trusted parameter "white list" through.
  def user_params
    params.require(:user).permit(:name, :username, :password)
  end #permitting these name, username and password attributes.

  def build_jwt(user_id, valid_for_minutes = 1440) #user will have to use the token in local storage and use it
    exp = Time.now.to_i + (valid_for_minutes * 60)
    payload = { #we are encoding this payload
      "iss": "fusionauth.io",
      "aud": "238d4793-70de-4183-9707-48ed8ecd19d9",
      "exp": exp,
      "user_id": user_id,
    }

    JWT.encode payload, ENV["SECRET_KEY_BASE"], "HS256" #using this to encode and decode the credentials of the user/jwt tokens
  end
end
