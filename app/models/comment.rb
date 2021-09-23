class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user, :post, :text, presence: true
end
