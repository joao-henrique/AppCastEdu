class CreateAbstractRegisters < ActiveRecord::Migration
  def change
    create_table :abstract_registers do |t|
      t.string :register

      t.timestamps null: false
    end
  end
end
