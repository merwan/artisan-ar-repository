class AddIterationOptionToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :import_iterations, :boolean
  end

  def self.down
    remove_column :projects, :import_iterations
  end
end
