class AddWmiPropertyIdToAlarms < ActiveRecord::Migration
  def self.up
    add_column :alarms, :wmi_property_id, :integer
  end

  def self.down
    remove_column :alarms, :wmi_property_id
  end
end
