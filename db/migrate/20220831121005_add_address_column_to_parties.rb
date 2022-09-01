class AddAddressColumnToParties < ActiveRecord::Migration[7.0]
  def change
    add_column :parties, :address, :string
  end
end
