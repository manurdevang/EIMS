class CreateEmployeeBankDetails < ActiveRecord::Migration
  def self.up
    create_table :employee_bank_details do |t|
      t.integer :employee_id
      t.string  :bank_id
      t.string  :acc_no
      t.boolean :status #there can be many many detaiks among that one is active
      t.integer :location_id
      t.timestamps
    end
  end

  def self.down
    drop_table :employee_bank_details
  end
end
