class Post < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  belongs_to :user
  #would post belong to a user too?
end
