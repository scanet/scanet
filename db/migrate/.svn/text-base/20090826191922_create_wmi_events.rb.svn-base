class CreateWmiEvents < ActiveRecord::Migration
  def self.up
    create_table :wmi_events do |t|
      t.integer :wmi_namespace_id
      t.string :classname
      t.string :eventname
      t.string :condition
      t.string :value

      t.timestamps
    end
  end

  def self.down
    drop_table :wmi_events
  end
end
