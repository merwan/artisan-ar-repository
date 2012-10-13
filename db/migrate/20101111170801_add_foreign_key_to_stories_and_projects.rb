class AddForeignKeyToStoriesAndProjects < ActiveRecord::Migration
  def self.up
    add_column :stories, :foreign_id, :integer
    add_column :projects, :foreign_id, :integer
  end

  def self.down
    remove_column :stories, :foreign_id
    remove_column :projects, :foreign_id
  end
end
