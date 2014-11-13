class CreateStatusUpdate < ActiveRecord::Migration
  def change
    create_table :status_updates do |t|
      t.string :status
      t.string :user
      t.integer :likes
      t.timestamps
    end
  end
end
