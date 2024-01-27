class CreateChatrooms < ActiveRecord::Migration[7.1]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.string :image_url
      t.string :bio

      t.timestamps
    end
  end
end
