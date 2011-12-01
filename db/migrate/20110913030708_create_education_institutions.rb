class CreateEducationInstitutions < ActiveRecord::Migration
  def self.up
    create_table :education_institutions do |t|
			t.string :name
			t.string :status
			t.integer :education_institution_group_id
			t.integer :created_by
			t.integer :approved_by
      t.timestamps
    end
  end

  def self.down
    drop_table :education_institutions
  end
end
