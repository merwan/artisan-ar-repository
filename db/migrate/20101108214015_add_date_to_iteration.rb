class AddDateToIteration < ActiveRecord::Migration
  def self.up
    add_column :iterations, :finish_date, :date
  end

  def self.down
    remove_column :iterations, :finish_date
  end
end
