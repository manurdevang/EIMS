class CreateUsersRoles < ActiveRecord::Migration
  def self.up
    create_table :users_roles do |t|
			t.integer  :user_id
			t.integer  :role_id
			t.string   :status
			t.string   :remarks
			t.integer  :created_by
			t.datetime :created_on			
			t.integer  :approved_by
			t.datetime :approved_on
			t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :users_roles
  end
end
