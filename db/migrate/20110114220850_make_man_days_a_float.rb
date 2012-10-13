class MakeManDaysAFloat < ActiveRecord::Migration
  def self.up
    remove_column :days, :man_days
    add_column :days, :man_days, :decimal, :precision => 5, :scale => 1
  end

  def self.down
    remove_column :days, :man_days
    add_column :days, :man_days, :integer

  end
end
