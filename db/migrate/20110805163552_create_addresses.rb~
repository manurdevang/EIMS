class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
			t.integer  :user_id
			t.integer  :phone
			t.string   :street
			t.string   :place
			t.text     :state
			t.text     :country
			t.text     :narration
			t.integer  :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
