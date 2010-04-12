class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.integer :wmi_namespace_id
      t.integer :wmi_class_id
      t.integer :wmi_property_id
      t.string :wmi_namespace_name
      t.string :wmi_class_name
      t.string :wmi_property_name

      #t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
