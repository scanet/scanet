class CreateWmiProperties < ActiveRecord::Migration
  def self.up
    create_table :wmi_properties do |t|
      t.integer :wmi_class_id
      t.string :name
      t.string :alias
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :wmi_properties
  end
end
