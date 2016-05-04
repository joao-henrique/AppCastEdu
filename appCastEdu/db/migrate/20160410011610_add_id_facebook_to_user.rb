class AddIdFacebookToUser < ActiveRecord::Migration
  def change
    add_column :users, :idRedeSocial, :string
  end
end
