class AddCompletionToIteration < ActiveRecord::Migration
  def self.up
    add_column :iterations, :complete, :boolean, :default => false, :null => false
    add_column :iterations, :completed_at, :datetime
  end

  def self.down
    remove_column :iterations, :completed_at
    remove_column :iterations, :complete
  end
end
