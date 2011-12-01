class CreateControllerActions < ActiveRecord::Migration
  def self.up
    create_table :controller_actions do |t|
			t.string     :controller
			t.string     :action
			t.boolean    :boolean
			t.integer    :created_by
			t.integer    :updated_by
			t.boolean    :is_browser_page  
			t.integer    :location_id
	    t.timestamps
    end
  end

  def self.down
    drop_table :controller_actions
  end
end
