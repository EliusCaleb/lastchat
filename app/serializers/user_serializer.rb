class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :image_url, :created_at

  has_many :memberships
end
