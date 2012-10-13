class RemoveRoundingStrategy < ActiveRecord::Migration
  def self.up
    remove_column :project_configurations, :rounding_strategy
  end

  def self.down
    add_column :project_configurations, :rounding_strategy
  end
end
