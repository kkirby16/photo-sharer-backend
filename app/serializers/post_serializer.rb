class PostSerializer
  include Rails.application.routes.url_helpers
  include JSONAPI::Serializer
  attributes :id, :user_id, :user, :caption, :likes, :image, :comments, :image_url

  def image
    if object.image.attached?
      {
        url: "http://localhost:4500#{rails_blob_path(object.image, only_path: true)}",
      }
    end
  end
end
