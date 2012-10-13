class RemoveNameFromIteration < ActiveRecord::Migration
  def self.up
    remove_column :iterations, :name
  end

  def self.down
    add_column :iterations, :name, :string
  end
end
