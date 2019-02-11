class AddToIdToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :to_id, :integer
  end
end
