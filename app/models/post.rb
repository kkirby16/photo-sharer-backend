class Post < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  belongs_to :user
  has_one_attached :image
  has_many :likes
  # validates :image, :caption, presence: true

  def image_url
    Rails.application.routes.url_helpers.url_for(image) if image.attached?
  end

  #would post belong to a user too?
end
