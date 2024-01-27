class ChatroomMembershipSerializer < ActiveModel::Serializer
  attributes :id
  has_one :chatroom
  has_one :user
end
