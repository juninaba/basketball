class RemoveSentUserFromMessage < ActiveRecord::Migration[5.2]
  def change
    remove_column :messages, :sent_user, :integer
  end
end
