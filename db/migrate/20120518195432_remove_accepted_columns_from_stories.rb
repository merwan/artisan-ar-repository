class RemoveAcceptedColumnsFromStories < ActiveRecord::Migration
  def self.up
    remove_column :stories, :accepted_by_user_id
    remove_column :stories, :accepted_at
  end

  def self.down
    add_column :stories, :accepted_by_user_id, :integer
    add_column :stories, :accepted_at, :datetime
  end
end
