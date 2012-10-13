class RenameStoryDescriptionToAcceptanceCriteria < ActiveRecord::Migration
  def self.up
    rename_column :stories, :description, :acceptance_criteria
  end

  def self.down
    rename_column :stories, :acceptance_criteria, :description
  end
end
