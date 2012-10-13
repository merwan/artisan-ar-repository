class AddCommittedPointsToIteration < ActiveRecord::Migration
  def self.up
    add_column :iterations, :committed_points, :decimal
  end

  def self.down
    remove_column :iterations, :committed_points
  end
end
