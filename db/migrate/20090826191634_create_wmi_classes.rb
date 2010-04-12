class CreateWmiClasses < ActiveRecord::Migration
  def self.up
    create_table :wmi_classes do |t|
      t.integer :wmi_namespace_id
      t.string :name
      t.string :alias
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :wmi_classes
  end
end
