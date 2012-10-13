class RemoveTeamSize < ActiveRecord::Migration
  def up
    remove_column :iterations, :team_size
  end

  def down
    add_column :iterations, :team_size, :integer
  end
end
