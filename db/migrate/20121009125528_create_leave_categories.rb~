class CreateLeaveCategories < ActiveRecord::Migration
  def self.up
    create_table :leave_categories do |t|
      t.string :name
      t.boolean :status
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :leave_categories
  end
end
