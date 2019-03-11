class AddHiddenStatusToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :hidden_status, :boolean
  end
end
