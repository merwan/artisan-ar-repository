class RemoveCurrentDescriptionFromEstimateRoom < ActiveRecord::Migration
  def self.up
    # remove_column :estimate_rooms, :current_description
  end

  def self.down
    # add_column :estimate_rooms, :current_description, :string
  end
end
