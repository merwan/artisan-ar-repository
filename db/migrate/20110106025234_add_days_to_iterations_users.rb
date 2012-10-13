class AddDaysToIterationsUsers < ActiveRecord::Migration
  def self.up
    add_column :iterations_users, :days, :integer
  end

  def self.down
    remove_column :iterations_users, :days
  end
end
