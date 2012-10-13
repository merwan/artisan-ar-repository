class RemoveVelocityFromIterations < ActiveRecord::Migration
  def self.up
    Iteration.all.each do |iteration|
      iteration.update_attribute(:committed_points, iteration.velocity)
    end
    remove_column :iterations, :velocity
  end

  def self.down
    add_column :iterations, :velocity, :integer
  end
end
