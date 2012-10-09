class CreateReligions < ActiveRecord::Migration
  def self.up
    create_table :religions do |t|
      t.string :name
      t.boolean :status
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :religions
  end
end
