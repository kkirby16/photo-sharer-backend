class CommentSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  #   include JSONAPI::Serializer
  attributes :id, :user_id, :user, :post_id, :text, :date, :likes
end
