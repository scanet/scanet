class CreateWmiNamespaces < ActiveRecord::Migration
  def self.up
    create_table :wmi_namespaces do |t|
      t.string :name
      t.string :alias
      t.string :description

      t.timestamps
    end
  end

  def self.down
    drop_table :wmi_namespaces
  end
end
