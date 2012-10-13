require 'artisan-ar-repository/models/story'
class AddCompletedAtToStories < ActiveRecord::Migration
  def self.up
    add_column :stories, :completed_at, :datetime

    Story.find(:all).each do |story|
      iteration = Iteration.find_by_id(story.iteration_id)
      if iteration
        if iteration.complete && story.complete
          story.completed_at = iteration.completed_at
          story.save
        end
      end
    end

  end

  def self.down
    remove_column :stories, :completed_at
  end
end
