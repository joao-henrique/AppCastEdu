class AddRoomsRefToUser < ActiveRecord::Migration
  def change
    add_reference :users, :rooms, index: true, foreign_key: true
  end
end
