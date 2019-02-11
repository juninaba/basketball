class RemoveFromIdFromMessage < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :from_id, :integer
  end
end
