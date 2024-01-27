class ChatroomMembershipSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :chatroom_id
  #has_one :chatroom
  #has_one :user
end
