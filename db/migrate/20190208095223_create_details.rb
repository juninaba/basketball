class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.integer :user_id
      t.text :text1
      t.text :text2
      t.text :text3
      t.text :text4
      t.timestamps
    end
  end
end
