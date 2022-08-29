class AddUserIdToParties < ActiveRecord::Migration[7.0]
  def change
    add_reference :parties, :user, foreign_key: true
  end
end
