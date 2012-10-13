class AddNumberToIteration < ActiveRecord::Migration
  def self.up
    add_column :iterations, :number, :integer
  end

  def self.down
    remove_column :iterations, :number
  end
end
