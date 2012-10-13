class AddBudgetAndPricePerPointToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :budget,          :decimal, :precision => 11, :scale => 2
    add_column :projects, :price_per_point, :decimal, :precision => 11, :scale => 2
  end

  def self.down
    remove_column :projects, :price_per_point
    remove_column :projects, :budget
  end
end
