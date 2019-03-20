class ChangeDataTypeForPictures < ActiveRecord::Migration[5.2]
  def change
    change_column :events, :pictures, :json
  end
end
