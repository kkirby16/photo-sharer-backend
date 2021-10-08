class UserSerializer < ActiveModel::Serializer
  # include JSONAPI::Serializer
  attributes :username, :name, :id, :likes
end
