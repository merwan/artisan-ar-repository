class RenameDaysToManDays < ActiveRecord::Migration
  def self.up
    rename_column :days, :days, :man_days
  end

  def self.down
    rename_column :days, :man_days, :days
  end
end
