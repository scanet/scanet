class CreateWorkstations < ActiveRecord::Migration
  def self.up
    create_table :workstations do |t|
      t.string :x
      t.string :y
      t.string :ip
      t.string :code
      t.string :mac
      t.string :name
      t.integer :ubication_id
      t.string :type
      t.integer :owner_id

      t.timestamps
    end
  end

  def self.down
    drop_table :workstations
  end
end
