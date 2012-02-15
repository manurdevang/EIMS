class CreateParentDetails < ActiveRecord::Migration
  def self.up
    create_table :parent_details do |t|
			t.integer :personel_information_id
			t.string :name
			t.integer :qualification_id
			t.integer :occupation_id
			t.string :work_place
			t.string :parent_type
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :parent_details
  end
end
