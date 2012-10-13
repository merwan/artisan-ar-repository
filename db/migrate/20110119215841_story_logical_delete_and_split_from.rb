class StoryLogicalDeleteAndSplitFrom < ActiveRecord::Migration
  def self.up
    add_column :stories, :deleted, :boolean, :default => false
    add_column :stories, :split_from, :integer
  end

  def self.down
    remove_column :stories, :deleted
    remove_column :stories, :split_from
  end
end
