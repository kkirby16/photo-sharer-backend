class ApplicationController < ActionController::API
  helpers do
    def current_user
      User.first
      #adding mocked version of being logged in.
    end

    def logged_in?
      !!current_user
    end
  end
end
