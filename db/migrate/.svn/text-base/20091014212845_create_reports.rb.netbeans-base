class CreateReports < ActiveRecord::Migration
  def self.up
    create_table :reports do |t|
      t.integer :wmi_property_id
      t.string :wmi_property_value
      t.string :workstation_id

      t.timestamps
    end
  end

  def self.down
    drop_table :reports
  end
end
