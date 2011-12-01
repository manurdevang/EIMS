class CreateDefaultSettings < ActiveRecord::Migration
  def self.up
    create_table :default_settings do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :default_settings
  end
end
