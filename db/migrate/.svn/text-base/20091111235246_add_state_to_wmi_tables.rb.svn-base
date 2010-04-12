class AddStateToWmiTables < ActiveRecord::Migration
  def self.up
    add_column :wmi_classes,    :state, :boolean, :default => true
    add_column :wmi_properties, :state, :boolean, :default => true
  end

  def self.down
   remove_column :wmi_classes,    :state
   remove_column :wmi_properties, :state
  end
end
