class DeleteColumnFromParties < ActiveRecord::Migration[7.0]
  def change
    remove_column :parties, :start_time
  end
end
