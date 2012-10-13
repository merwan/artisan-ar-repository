class RenameDayToDays < ActiveRecord::Migration
  def self.up
    rename_table :day, :days
  end

  def self.down
    rename_table :days, :day
  end
end
