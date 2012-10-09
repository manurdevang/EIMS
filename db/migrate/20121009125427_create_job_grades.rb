class CreateJobGrades < ActiveRecord::Migration
  def self.up
    create_table :job_grades do |t|
      t.string :name
      t.boolean :status
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :job_grades
  end
end
