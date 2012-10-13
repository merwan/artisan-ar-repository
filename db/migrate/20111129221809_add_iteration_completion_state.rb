class AddIterationCompletionState < ActiveRecord::Migration
  def self.up
    add_column :iterations, :committed_points_at_completion, :decimal, :precision => 5, :scale => 2
  end

  def self.down
    remove_column :iterations, :committed_points_at_completion
  end
end
