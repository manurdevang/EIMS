class CreatePersonelInformations < ActiveRecord::Migration
  def self.up
    create_table :personel_informations do |t|
			t.integer :user_id
			t.datetime :dob
			t.integer :age
			t.float :height
			t.string :blood_group
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :personel_informations
  end
end
