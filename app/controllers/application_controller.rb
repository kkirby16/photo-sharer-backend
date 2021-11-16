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
  # before_action :authenticate_user
  include ::ActionController::Cookies #also need to tell our controllers that we turned this stuff on.

  def current_user
    payload = authenticate_user
    logger.info "Payload info: #{payload.inspect}"
    head :forbidden unless payload
    @current_user ||= User.find_by(id: payload[0]["user_id"]) #
  end

  def logged_in?
    !!current_user
  end

  def authenticate_user
    head :unauthorized if request.headers["Authorization"].nil?
    token = request.headers["Authorization"]
    logger.info "Token info: #{token.inspect}"
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
      decoded_token = JWT.decode token, ENV["SECRET_KEY_BASE"], true, { verify_iss: true, iss: expected_iss, verify_aud: true, aud: expected_aud, algorithm: "HS256" }
      return decoded_token
    rescue JWT::DecodeError
      Rails.logger.info "Error decoding the JWT: " + e.to_s #turning error into a string"
    end
    nil
  end
end
