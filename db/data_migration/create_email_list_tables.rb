module DataMigration
  module CreateEmailListTables
    def self.migrate
      ProjectConfiguration.all.each do |project_configuration|
				project_configuration.story_completed_email_list.each do |email|
					StoryCompletedEmail.create(:project_configuration_id => project_configuration.id, :email => email)
				end

				project_configuration.story_assigned_email_list.each do |email|
					StoryAssignedEmail.create(:project_configuration_id => project_configuration.id, :email => email)
				end
      end
    end
  end
end

