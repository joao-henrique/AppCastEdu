class CreateRegisterEmails < ActiveRecord::Migration
  def change
    create_table :register_emails do |t|

      t.timestamps null: false
    end
  end
end
