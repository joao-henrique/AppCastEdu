class AddForumsToRoom < ActiveRecord::Migration
  def change
    add_reference :rooms, :forums, index: true, foreign_key: true
  end
end
