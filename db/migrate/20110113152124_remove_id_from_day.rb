class RemoveIdFromDay < ActiveRecord::Migration
  def self.up
    # remove_column :days, :id
  end

  def self.down
    # add_column :days, :id, :integer
  end
end
