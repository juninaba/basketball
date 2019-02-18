class AddRoomIdToRelationship < ActiveRecord::Migration[5.2]
  def change
    add_column :relationships, :room_id, :integer
  end
end
