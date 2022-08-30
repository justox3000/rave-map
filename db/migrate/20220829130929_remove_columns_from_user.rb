class RemoveColumnsFromUser < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :firstname
    remove_column :users, :lastname
    add_column :users, :username, :string
  end
end
