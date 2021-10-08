class PostSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  #   include JSONAPI::Serializer
  attributes :id, :user_id, :user, :caption, :likes, :image, :image_url, :seeded_image_data
  has_many :comments, serializer: CommentSerializer

  def image
    if object.image.attached?
      {
        url: "http://localhost:4500#{rails_blob_path(object.image, only_path: true)}",
      }
    end
  end
end
