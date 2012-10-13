class ProjectDefaults < ActiveRecord::Migration
  def self.up
    Project.find_each do |project|
      project.project_configuration = ProjectConfiguration.new if project.project_configuration.nil?
      project.project_configuration.rounding_strategy = "nearest" if project.project_configuration.rounding_strategy.nil?
      project.project_configuration.save!
    end
  end

  def self.down
  end
end
