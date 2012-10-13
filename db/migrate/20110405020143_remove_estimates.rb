class RemoveEstimates < ActiveRecord::Migration
  def self.up
    drop_table :estimates
    drop_table :estimate_rooms
    drop_table :estimators
    drop_table :tasks
    drop_table :estimate_stories
  end

  def self.down
  end
end
