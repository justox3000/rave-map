class CreateParties < ActiveRecord::Migration[7.0]
  def change
    create_table :parties do |t|
      t.string :title
      t.string :music_genre
      t.string :location
      t.text :description
      t.date :date
      t.time :starttime
      t.time :endtime

      t.timestamps
    end
  end
end
