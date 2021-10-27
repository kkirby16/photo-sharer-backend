class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  #   include JSONAPI::Serializer
  attributes :id, :user_id, :user, :caption, :likes, :image, :image_url, :seeded_image_data
  has_many :comments, serializer: CommentSerializer

  def image #within the image key of each post there will be an object with a url key set to the url for the image"
    if object.image.attached?
      {
        url: "https://photo-sharer-backend.herokuapp.com/#{rails_blob_path(object.image, only_path: true)}",
      }
    end
  end
end
