class AddProjectIdAndItemDisplayNameToVersions < ActiveRecord::Migration
  def self.up
    add_column :versions, :project_id, :integer
    add_column :versions, :item_display_name, :string
  end

  def self.down
    remove_column :versions, :item_display_name
    remove_column :versions, :project_id
  end
end
