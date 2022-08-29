class AddReferencesToAttendings < ActiveRecord::Migration[7.0]
  def change
    add_reference :attendings, :user, foreign_key: true
    add_reference :attendings, :party, foreign_key: true
  end
end
