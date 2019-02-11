class AddSentIdToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :sent_id, :integer
  end
end
