class ReorderStoryNumbers < ActiveRecord::Migration
  def self.up
    projects = Project.unscoped.find(:all)
    projects.each do |project|
      stories = Story.unscoped.where(:project_id => project.id)
      i = 0
      stories.sort_by {|key| key[:created_at]}.each do |story|
        i += 1
        story.number = i
        story.save!
      end
    end
  end

  def self.down
  end
end
