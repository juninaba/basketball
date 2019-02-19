class AddRelationshipToRooms < ActiveRecord::Migration[5.2]
  def change
    add_reference :rooms, :relationship, foreign_key: true
  end
end
