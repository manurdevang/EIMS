class CreateEmployees < ActiveRecord::Migration
  def self.up
    create_table :employees do |t|
      t.integer  :personnel_id
      t.integer  :employee_type_id
      t.integer  :job_grade_id
      t.date     :date_of_joining
      t.integer  :manager_id
      t.string   :email_id
      t.integer  :employeement_status_id
      t.integer  :notice_period
      t.boolean  :pf_applicable, :default => 1
      t.boolean  :esi_applicable, :default => 1
      t.string   :pan_number
      t.string   :passport_no
      t.string   :driving_licence_number
      t.boolean  :status
      t.integer  :leave_category_id
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :employees
  end
end
