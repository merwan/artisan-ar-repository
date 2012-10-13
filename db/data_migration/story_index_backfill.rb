require File.expand_path('../../../config/environment.rb', __FILE__)

@projects = Project.all

@projects.each do |project|
  @index = 1

  project.stories.order("created_at ASC").each do |story|
    story.update_attribute(:number, @index)
    @index += 1
  end

end
