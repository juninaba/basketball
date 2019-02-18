class AddRelationshipIdToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :relationship_id, :integer
  end
end
