# class ApplicationController < ActionController::API
#   include ::ActionController::Cookies #also need to tell our controllers that we turned this stuff on.

#   def current_user
#     @current_user ||= User.find_by(id: session[:user_id])
#     #adding mocked version of being logged in.
#   end

#   def logged_in?
#     !!current_user
#   end
# end

class ApplicationController < ActionController::API
  before_action :authenticate_user
  include ::ActionController::Cookies #also need to tell our controllers that we turned this stuff on.

  def current_user
    payload = authenticate_user
    logger.info "Payload info: ${payload}"
    @current_user ||= User.find_by(id: payload["user_id"])
  end

  def logged_in?
    !!current_user
  end

  def authenticate_user
    token = request.headers["Authorization"]
    if !token
      head :forbidden
    end
    payload = valid_token(token)
    if !payload
      head :forbidden
    end
    payload
  end

  private

  def valid_token(token)
    unless token
      return nil
    end

    token.gsub!("Bearer ", "")
    begin
      expected_iss = "fusionauth.io" #needs to match what is in sessions controller that we encoded
      expected_aud = "238d4793-70de-4183-9707-48ed8ecd19d9" #needs to match what is in sessions controller that we encoded
      decoded_token = JWT.decode token, Rails.configuration.x.oauth.jwt_secret, true, { verify_iss: true, iss: expected_iss, verify_aud: true, aud: expected_aud, algorithm: "HS256" }
      return decoded_token
    rescue JWT::DecodeError
      Rails.logger.warn "Error decoding the JWT: " + e.to_s
    end
    nil
  end
end
