class ChangePlaceFieldInEvents < ActiveRecord::Migration[5.2]
  def change
    remove_column :events, :place
    add_column :events, :place_id, :integer, foreign_key: true
  end
end
