if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, :key => "_myapp", domain: "https://photo-sharer-kkirby16.netlify.app"
else
  Rails.application.config.session_store :cookie_store, key: "_myapp"
end
