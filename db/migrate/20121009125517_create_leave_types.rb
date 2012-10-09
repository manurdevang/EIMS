class CreateLeaveTypes < ActiveRecord::Migration
  def self.up
    create_table :leave_types do |t|
      t.string :name
      t.boolean :status
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :leave_types
  end
end
