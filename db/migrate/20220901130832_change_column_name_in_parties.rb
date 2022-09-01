class ChangeColumnNameInParties < ActiveRecord::Migration[7.0]
  def change
    rename_column :parties, :starttime, :start_time
  end
end
