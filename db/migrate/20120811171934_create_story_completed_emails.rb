class CreateStoryCompletedEmails < ActiveRecord::Migration
  def self.up
    create_table :story_completed_emails do |t|
      t.string :email
      t.references :project_configuration
    end
  end

  def self.down
		drop_table :story_completed_emails
  end
end
