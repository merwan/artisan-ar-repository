class AddApiSourceToProjects < ActiveRecord::Migration
  def self.up
    add_column :projects, :api_source, :string
  end

  def self.down
    remove_column :projects, :api_source
  end
end
