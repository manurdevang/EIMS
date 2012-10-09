class CreateLeaveProfiles < ActiveRecord::Migration
  def self.up
    create_table :leave_profiles do |t|
      t.integer :leave_type_id
      t.integer :leave_category_id 
      t.float :total_leave
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :leave_profiles
  end
end
