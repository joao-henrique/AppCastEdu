class CreateForums < ActiveRecord::Migration
  def change
    create_table :forums do |t|
      t.string :tittle
      t.text :description

      t.timestamps null: false
    end
  end
end
