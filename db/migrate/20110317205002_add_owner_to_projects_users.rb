class AddOwnerToProjectsUsers < ActiveRecord::Migration
  def self.up
    add_column :projects_users, :owner, :boolean, :default => false
  end

  def self.down
    remove_column :projects_users, :owner
  end
end
