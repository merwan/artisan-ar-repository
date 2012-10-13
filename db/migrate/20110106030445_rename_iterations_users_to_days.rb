class RenameIterationsUsersToDays < ActiveRecord::Migration
  def self.up
    rename_table :iterations_users, :day
  end

  def self.down
    rename_table :day, :iterations_users
  end
end
