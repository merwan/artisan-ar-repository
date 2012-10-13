class AddProjectIdToChageColumn < ActiveRecord::Migration
  def self.up
    add_column :changes, :project_id, :integer
  end

  def self.down
    remove_column :changes, :project_id
  end
end
