class AddEstimateToStory < ActiveRecord::Migration
  def self.up
    add_column :stories, :estimate, :decimal, :precision => 5, :scale => 1
  end

  def self.down
    remove_column :stories, :estimate
  end
end
