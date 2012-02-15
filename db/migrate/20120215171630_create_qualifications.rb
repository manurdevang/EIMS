class CreateQualifications < ActiveRecord::Migration
  def self.up
    create_table :qualifications do |t|
			t.string :name
			t.string :symolic_qualification
			t.boolean :status
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :qualifications
  end
end
