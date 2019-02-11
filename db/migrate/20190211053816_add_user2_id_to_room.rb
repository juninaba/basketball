class AddUser2IdToRoom < ActiveRecord::Migration[5.2]
  def change
    add_column :rooms, :user2_id, :integer
  end
end
