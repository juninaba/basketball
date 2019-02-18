class AddNull < ActiveRecord::Migration[5.2]
  def change
    change_column :rooms, :relationship_id, :bigint, null: true
  end
end
