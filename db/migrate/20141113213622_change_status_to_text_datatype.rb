class ChangeStatusToTextDatatype < ActiveRecord::Migration
  def change
    change_column :status_updates, :status, :text
  end
end
