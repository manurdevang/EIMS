class CreateMenuGroupMenuContainers < ActiveRecord::Migration
  def self.up
    create_table :menu_group_menu_containers do |t|
			t.integer :menu_group_id
			t.integer :menu_container_id
			t.integer :created_by
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :menu_group_menu_containers
  end
end
