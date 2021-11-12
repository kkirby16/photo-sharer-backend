Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create" #creating a session that will come from a post request.
  post "/api/v1/signup", to: "api/v1/users#create"

  delete "/api/v1/logout", to: "api/v1/sessions#destroy"
  get "/api/v1/get_current_user", to: "api/v1/sessions#get_current_user"
  get "/api/v1/add_post", to: "api/v1/posts#create"

  namespace :api do
    namespace :v1 do
      resources :posts do
        resources :comments
        resources :likes
      end

      resources :users
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end
