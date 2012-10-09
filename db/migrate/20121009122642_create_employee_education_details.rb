class CreateEmployeeEducationDetails < ActiveRecord::Migration
  def self.up
    create_table :employee_education_details do |t|
      t.integer :employee_id
      t.integer :degree_id
      t.integer :institution
      t.integer :university
      t.integer :month_id
      t.integer :year_id
      t.string :grade
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :employee_education_details
  end
end
