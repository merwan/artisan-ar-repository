class RenameStateToComplete < ActiveRecord::Migration
  def self.up
    rename_column :stories, :state, :complete
  end

  def self.down
    rename_column :stories, :complete, :state
  end
end
