class AddIndexToStories < ActiveRecord::Migration

  def self.up
    add_column :stories, :number, :integer
  end

  def self.down
    remove_column :stories, :number
  end

end
