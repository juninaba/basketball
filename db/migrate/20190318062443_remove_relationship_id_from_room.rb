class RemoveRelationshipIdFromRoom < ActiveRecord::Migration[5.2]
  def change
    remove_column :rooms, :relationship_id, :integer
  end
end
