class DropChangesTable < ActiveRecord::Migration
  def self.up
    drop_table :changes
  end

  def self.down
  end
end
