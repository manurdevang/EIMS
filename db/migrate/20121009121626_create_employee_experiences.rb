class CreateEmployeeExperiences < ActiveRecord::Migration
  def self.up
    create_table :employee_experiences do |t|
      t.integer :employee_id
      t.string  :company_name
      t.float   :duration
      t.date    :from
      t.date    :to
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :employee_experiences
  end
end
