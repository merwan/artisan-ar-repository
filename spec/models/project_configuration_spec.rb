require 'artisan-ar-repository/models/project_configuration'
require 'spec_helper'

describe ProjectConfiguration do
  before(:each) do
    ProjectConfiguration.destroy_all
    Project.destroy_all
  end

  it "belongs to a project" do
    project = Project.create!(:name => "test")
    configuration = ProjectConfiguration.new(:project => project)
    configuration.project.should == project
  end

  it "returns stddev as default estimate mode" do
    project = Project.create!(:name => "test")
    configuration = ProjectConfiguration.new(:project => project)
    configuration.estimate_mode.should == ProjectConfiguration::STANDARD_DEVIATION
  end
end
