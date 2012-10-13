class RemoveEstimateOverrideFromStories < ActiveRecord::Migration
  def self.up
    remove_column :stories, :estimate_override
  end

  def self.down
    add_column :stories, :estimate_override, :decimal, :precision => 5, :scale => 2
  end
end
