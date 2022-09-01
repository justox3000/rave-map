class AddColumnStartTimeToParties < ActiveRecord::Migration[7.0]
  def change
    add_column :parties, :start_time, :datetime
  end
end
