class UserSerializer < ActiveModel::Serializer
  attributes :username, :name, :id, :likes
end
