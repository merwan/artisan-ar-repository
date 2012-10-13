class RemoveManDaysFromDays < ActiveRecord::Migration
  def up
    remove_column :days, :man_days
  end

  def down
    add_column :days, :man_days, :integer
  end
end
