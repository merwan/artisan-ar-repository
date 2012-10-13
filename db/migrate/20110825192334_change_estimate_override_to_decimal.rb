class ChangeEstimateOverrideToDecimal < ActiveRecord::Migration
  def self.up
    change_column :stories, :estimate_override,    :decimal, :precision => 5, :scale => 2
  end

  def self.down
    change_column :stories, :estimate_override,    :integer
  end
end
