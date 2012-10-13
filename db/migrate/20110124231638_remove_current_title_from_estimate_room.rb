class RemoveCurrentTitleFromEstimateRoom < ActiveRecord::Migration
  def self.up
    remove_column :estimate_rooms, :current_title
  end

  def self.down
    add_column :estimate_rooms, :current_title, :string
  end
end
