class AddCategoryRefToRoom < ActiveRecord::Migration
  def change
    add_reference :rooms, :categories, index: true, foreign_key: true
  end
end
