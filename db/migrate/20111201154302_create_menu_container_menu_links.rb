class CreateMenuContainerMenuLinks < ActiveRecord::Migration
  def self.up
    create_table :menu_container_menu_links do |t|
			t.integer :menu_container_id
			t.integer :menu_link_id
			t.integer :created_by
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :menu_container_menu_links
  end
end
