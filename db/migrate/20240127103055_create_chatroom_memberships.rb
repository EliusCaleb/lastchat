class CreateChatroomMemberships < ActiveRecord::Migration[7.1]
  def change
    create_table :chatroom_memberships do |t|
      t.references :chatroom, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
