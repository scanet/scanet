class CreateTools < ActiveRecord::Migration
  def self.up
    create_table :tools do |t|
      t.string :name
      t.string :version
      t.string :path
      t.string :command
      t.string :params

      t.timestamps
    end
  end

  def self.down
    drop_table :tools
  end
end
