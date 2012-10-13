class AddTeamSizeToIteration < ActiveRecord::Migration
  def self.up
    add_column :iterations, :team_size, :integer
  end

  def self.down
    remove_column :iterations, :team_size
  end
end
