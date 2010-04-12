class AddLoginPassToWorkstations < ActiveRecord::Migration
  def self.up
    add_column :workstations, :login, :string
    add_column :workstations, :password, :string
  end

  def self.down
    remove_column :workstations, :login
    remove_column :workstations, :password
  end
end