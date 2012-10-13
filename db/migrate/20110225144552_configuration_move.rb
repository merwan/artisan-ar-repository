class ConfigurationMove < ActiveRecord::Migration
  def self.up
    Project.find_each do |project|
      project.project_configuration = ProjectConfiguration.new(:api_source => project.api_source, :api_key => project.api_key,
                                :import_iterations => project.import_iterations, :estimate_mode => project.estimate_mode)
      project.project_configuration.save!
    end

    remove_column :projects, :api_source
    remove_column :projects, :api_key
    remove_column :projects, :import_iterations
    remove_column :projects, :estimate_mode
  end

  def self.down
    add_column :projects, :api_source, :string
    add_column :projects, :api_key, :string
    add_column :projects, :import_iterations, :boolean
    add_column :projects, :estimate_mode, :string
  end
end
