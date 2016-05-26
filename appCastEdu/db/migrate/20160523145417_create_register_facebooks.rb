class CreateRegisterFacebooks < ActiveRecord::Migration
  def change
    create_table :register_facebooks do |t|

      t.timestamps null: false
    end
  end
end
