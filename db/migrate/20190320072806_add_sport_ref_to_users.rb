class AddSportRefToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :sport, foreign_key: true
  end
end
