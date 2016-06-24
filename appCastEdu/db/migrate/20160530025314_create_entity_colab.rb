class CreateEntityColab < ActiveRecord::Migration
  def change
    create_table :entity_colabs do |t|
      t.string :name

      t.timestamps
    end

    create_table :children_containers, :id => false do |t|
        t.references :child
        t.references :container
    end

    add_index :children_containers, :child_id
    add_index :children_containers, [:container_id, :child_id], :unique => true
  end
end
