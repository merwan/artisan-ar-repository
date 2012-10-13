class ProjectConfiguration < ActiveRecord::Base
  belongs_to :project

  serialize :story_completed_email_list, Array
  serialize :story_assigned_email_list, Array

  STANDARD_DEVIATION = "stddev"
  WEIGHTED_MEAN = "weighted_mean"

  def estimate_mode
    read_attribute(:estimate_mode) || STANDARD_DEVIATION
  end
end
