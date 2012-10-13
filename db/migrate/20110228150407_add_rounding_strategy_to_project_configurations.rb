class AddRoundingStrategyToProjectConfigurations < ActiveRecord::Migration
  def self.up
    add_column :project_configurations, :rounding_strategy, :string
  end

  def self.down
    remove_column :project_configurations, :rounding_strategy
  end
end
