class AddAlarmToWorkstations < ActiveRecord::Migration
  def self.up
    add_column :workstations, :alarm, :boolean, :default => 0
  end

  def self.down
    remove_column :workstations, :alarm
  end
end
