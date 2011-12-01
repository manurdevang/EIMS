class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
	 	 t.string :name
	   t.integer :priority
		 t.boolean :status
		 t.string :remarks
		 t.integer :created_by
		 t.datetime :created_on
		 t.integer :approved_by
		 t.datetime :approved_on
		 t.integer :location_id
     t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
