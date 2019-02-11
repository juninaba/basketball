class AddRoomToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :room, :integer
  end
end
