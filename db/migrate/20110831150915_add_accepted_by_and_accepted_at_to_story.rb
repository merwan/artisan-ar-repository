class AddAcceptedByAndAcceptedAtToStory < ActiveRecord::Migration
  def self.up
    add_column :stories, :accepted_at, :datetime
    add_column :stories, :accepted_by_user_id, :integer
  end

  def self.down
    remove_column :stories, :accepted_at
    remove_column :stories, :accepted_by_user_id

  end
end
