class RemoveBudget < ActiveRecord::Migration
  def self.up
    remove_column :projects, :budget
    remove_column :projects, :price_per_point
  end

  def self.down
    add_column :projects, :budget, :decimal
    add_column :projects, :price_per_point, :decimal
  end
end
