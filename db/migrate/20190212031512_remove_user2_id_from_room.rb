class RemoveUser2IdFromRoom < ActiveRecord::Migration[5.2]
  def change
    remove_column :rooms, :user2_id, :integer
  end
end
