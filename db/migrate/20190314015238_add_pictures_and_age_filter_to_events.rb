class AddPicturesAndAgeFilterToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :pictures, :string
    add_column :events, :age_filter, :integer
  end
end
