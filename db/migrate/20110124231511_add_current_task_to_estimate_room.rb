class AddCurrentTaskToEstimateRoom < ActiveRecord::Migration
  def self.up
    add_column :estimate_rooms, :current_task_id, :integer
  end

  def self.down
    remove_column :estimate_rooms, :current_task_id
  end
end
