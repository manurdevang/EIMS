class CreateDesignations < ActiveRecord::Migration
  def self.up
    create_table :designations do |t|
      t.string :name
      t.boolean :status, :default => true
      t.integer :designation_type_id 
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :designations
  end
end

