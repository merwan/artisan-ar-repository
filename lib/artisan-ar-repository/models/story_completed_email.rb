class StoryCompletedEmail < ActiveRecord::Base
  belongs_to :project_configuration
end
