class RemoveFitnesseExport < ActiveRecord::Migration
  def self.up
    remove_column :project_configurations, :fitnesse_export
  end

  def self.down
    add_column :project_configurations, :fitnesse_export, :boolean
  end
end
