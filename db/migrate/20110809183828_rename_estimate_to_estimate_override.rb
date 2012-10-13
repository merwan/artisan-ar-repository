class RenameEstimateToEstimateOverride < ActiveRecord::Migration
  def self.up
    rename_column :stories, :estimate, :estimate_override
  end

  def self.down
  end
end
