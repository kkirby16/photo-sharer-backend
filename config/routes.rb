Rails.application.routes.draw do
  post "/api/v1/login", to: "api/v1/sessions#create" #creating a session that will come from a post request.

  namespace :api do
    namespace :v1 do
      resources :posts
      resources :users
      resources :comments
      # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    end
  end
end
