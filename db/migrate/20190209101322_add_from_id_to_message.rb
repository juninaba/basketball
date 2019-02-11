class AddFromIdToMessage < ActiveRecord::Migration[5.2]
  def change
    add_column :messages, :from_id, :integer
  end
end
