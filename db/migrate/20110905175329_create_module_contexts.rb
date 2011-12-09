class CreateModuleContexts < ActiveRecord::Migration
  def self.up
    create_table :module_contexts do |t|
			t.string :name
      t.string :description
			t.string :status
			t.string :approved_by
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :module_contexts
  end
end
