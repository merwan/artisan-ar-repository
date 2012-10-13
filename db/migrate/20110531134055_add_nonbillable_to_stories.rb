class AddNonbillableToStories < ActiveRecord::Migration
  def self.up
    add_column :stories, :nonbillable, :boolean, :default => false, :null => false
  end

  def self.down
    remove_column :stories, :nonbillable
  end
end
