class CreateMenuContainers < ActiveRecord::Migration
  def self.up
    create_table :menu_containers do |t|
			t.string :name
			t.string :description
      t.integer :container_position
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :menu_containers
  end
end
