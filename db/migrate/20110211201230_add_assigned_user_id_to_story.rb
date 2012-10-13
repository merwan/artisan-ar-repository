class AddAssignedUserIdToStory < ActiveRecord::Migration
  def self.up
    add_column :stories, :assigned_user_id, :integer
  end

  def self.down
    remove_column :stories, :assigned_user_id
  end
end
