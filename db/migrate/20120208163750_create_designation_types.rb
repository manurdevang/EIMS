class CreateDesignationTypes < ActiveRecord::Migration
  def self.up
    create_table :designation_types do |t|
      t.string :name
      t.boolean :status, :default => true
      t.integer :location_id      
      t.timestamps
      
    end
  end

  def self.down
    drop_table :designation_types
  end
end
