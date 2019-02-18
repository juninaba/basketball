class RemoveRoomIdFromRelationship < ActiveRecord::Migration[5.2]
  def change
    remove_column :relationships, :room_id, :integer
  end
end
