class CreateConfigurations < ActiveRecord::Migration
  def self.up
    create_table :configurations do |t|
      t.string :ip
      t.string :map_path
      t.time :report_time
      t.integer :report_seq

      t.timestamps
    end
  end

  def self.down
    drop_table :configurations
  end
end
