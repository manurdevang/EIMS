class CreateMenuLinks < ActiveRecord::Migration
  def self.up
    create_table :menu_links do |t|
			t.string  :name
			t.string  :description		
			t.string  :controller
      t.string  :action
      t.string  :path
			t.string  :method
			t.string  :status
			t.integer :module_context_id
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :menu_links
  end
end
