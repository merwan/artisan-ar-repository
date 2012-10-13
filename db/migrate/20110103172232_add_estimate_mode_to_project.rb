class AddEstimateModeToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :estimate_mode, :string
  end

  def self.down
    remove_column :projects, :estimate_mode
  end
end
