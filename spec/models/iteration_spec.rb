require 'spec_helper'

describe ::Iteration do
  it "has a total billed points" do
    project_config = ProjectConfiguration.create!(:estimate_mode => "stddev")
    project = ::Project.create!(:name => "Cymen", :project_configuration => project_config)
    iteration = project.iterations.create!
    iteration.stories.create!(:name => "test", :optimistic => 1, :realistic => 1, :pessimistic => 1, :complete => true, :project => iteration.project)
    iteration.stories.create!(:name => "test", :optimistic => 2, :realistic => 2, :pessimistic => 2, :complete => true, :project => iteration.project )
    iteration.total_billed_points.should == 3
  end
end
