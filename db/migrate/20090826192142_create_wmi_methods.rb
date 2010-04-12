class CreateWmiMethods < ActiveRecord::Migration
  def self.up
    create_table :wmi_methods do |t|
      t.integer :wmi_class_id
      t.string :name
      t.string :alias
      t.string :description
      t.string :method
      t.string :parameter

      t.timestamps
    end
  end

  def self.down
    drop_table :wmi_methods
  end
end
