class CreateMenuGroups < ActiveRecord::Migration
  def self.up
    create_table :menu_groups do |t|
			t.string  :name
			t.string :description
			t.integer :role_id
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :menu_groups
  end
end
