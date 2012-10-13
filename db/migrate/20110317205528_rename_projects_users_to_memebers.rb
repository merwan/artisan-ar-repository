class RenameProjectsUsersToMemebers < ActiveRecord::Migration
  def self.up
    rename_table :projects_users, :members
  end

  def self.down
    rename_table :members, :projects_users
  end
end
