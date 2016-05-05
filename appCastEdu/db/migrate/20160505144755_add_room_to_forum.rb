class AddRoomToForum < ActiveRecord::Migration
  def change
    add_reference :forums, :room, index: true, foreign_key: true
  end
end
