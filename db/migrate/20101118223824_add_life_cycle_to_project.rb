class AddLifeCycleToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :life_cycle, :integer
  end

  def self.down
    remove_column :projects, :life_cycle
  end
end
