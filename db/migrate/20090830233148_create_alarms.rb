class CreateAlarms < ActiveRecord::Migration
  def self.up
    create_table :alarms do |t|
      t.integer :workstation_id
      t.string :original
      t.string :reported

      t.timestamps
    end
  end

  def self.down
    drop_table :alarms
  end
end
