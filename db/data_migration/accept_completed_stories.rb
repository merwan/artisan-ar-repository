module DataMigration
  module AcceptCompletedStories
    def self.migrate
      self.two_week_old_completed_stories.each do |story|
        story.accepted_at = story.updated_at
        story.accepted_by_user = story.assigned_user
        story.save
      end
    end

    def self.two_week_old_completed_stories
      Story.find(:all, :conditions => ["complete = true AND created_at < ?", Date.today - 13.days])
    end

  end
end
