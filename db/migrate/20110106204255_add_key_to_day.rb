class AddKeyToDay < ActiveRecord::Migration
  def self.up
    add_column :days, :id, :integer
    add_index :days, :id, :unique => true
  end

  def self.down
    remove_column :days, :id
  end
end
