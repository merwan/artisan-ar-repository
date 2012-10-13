class AddStoryAssignedEmailListToProjectConfigurations < ActiveRecord::Migration
  def self.up
    add_column :project_configurations, :story_assigned_email_list, :string, :default => [].to_yaml
  end

  def self.down
    remove_column :project_configurations, :story_assigned_email_list
  end
end
