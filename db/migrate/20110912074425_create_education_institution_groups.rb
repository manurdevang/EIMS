class CreateEducationInstitutionGroups < ActiveRecord::Migration
  def self.up
    create_table :education_institution_groups do |t|
			t.string :name
			t.string :status
			t.integer :created_by
			t.integer :approved_by
      t.timestamps
    end
  end

  def self.down
    drop_table :education_institution_groups
  end
end
