class CreatePersonnels < ActiveRecord::Migration
  def self.up
    create_table :personnels do |t|
     t.string :first_name
     t.string :last_name
     t.string :middle_name
     t.integer:marital_status_id
     t.integer:title_id
     t.string :father_name
     t.string :gaurdian_name
     t.integer :gaurdian_relation_id
     t.datetime:date_of_birth
     t.integer :age
     t.integer :height
     t.integer :blood_group
     t.integer :location_id
     t.date :aniversary_date
     t.integer:religion_id
     t.integer:nationality_id
     t.timestamps
    end
  end

  def self.down
    drop_table :personnels
  end
end
