class User < ApplicationRecord
  has_secure_password
  #we want our users to have passwords and we know we want to use bcrypt to hash them
  has_many :comments
  has_many :posts, through: :comments
  has_many :posts
  has_many :likes

  validates :name, :username, presence: true
  validates :username, uniqueness: true
end
