class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
			t.integer  :personel_information_id
			t.string :address_type
			t.integer  :phone
			t.string   :street
			t.string   :place
			t.text     :state
			t.text     :country
			t.text     :narration
			t.integer  :location_id
			t.string   :type
      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
