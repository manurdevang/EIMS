class AddIsStudentToUser < ActiveRecord::Migration
  def self.up
		add_column :users, :is_student, :integer
		add_column :users, :father_name,:string
		add_column :users, :mother_name,:string	
  end

  def self.down
		remove_column :users, :is_student
		remove_column :users, :father_name
		remove_column :users, :mother_name
  end
end
