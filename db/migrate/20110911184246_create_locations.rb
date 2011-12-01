class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
			t.string  :name
			t.string  :status
			t.integer :created_by
			t.integer :approved_by
			t.integer :education_institution_id
			t.boolean :is_default
      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
