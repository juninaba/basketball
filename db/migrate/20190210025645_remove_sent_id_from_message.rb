class RemoveSentIdFromMessage < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :sent_id, :integer
  end
end
