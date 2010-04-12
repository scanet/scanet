class CreateHardwareReports < ActiveRecord::Migration
  def self.up
    create_table :hardware_reports do |t|
      t.integer :workstation_id
      t.integer :wmi_property_id
      t.string :value

      t.timestamps
    end
  end

  def self.down
    drop_table :hardware_reports
  end
end
