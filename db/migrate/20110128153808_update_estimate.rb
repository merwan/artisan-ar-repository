class UpdateEstimate < ActiveRecord::Migration
  def self.up
    remove_column :estimates, :story_id
    remove_column :estimates, :estimate_room_id
    add_column :estimates, :task_id, :integer
  end

  def self.down
    add_column :estimates, :story_id, :integer
    add_column :estimates, :estimate_room_id, :integer
    remove_column :estimates, :task_id
  end
end
