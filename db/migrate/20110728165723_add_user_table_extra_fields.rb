class AddUserTableExtraFields < ActiveRecord::Migration
  def self.up
	add_column :users, :name, :string
#	add_column :users, :role_id, :integer
	add_column :users, :location_id, :integer
	#add_column :users, :personnel_info_id, :integer
	#add_column :users, :address_id, :integer
  end

  def self.down
	remove_column :users, :name
#	remove_column :users, :role_id
	remove_column :users, :location_id
	#remove_column :users, :personnel_info_id
	#remove_column :users, :address_id
  end
end
