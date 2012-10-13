class CreateProjectConfigurations < ActiveRecord::Migration
  def self.up
    create_table :project_configurations do |t|
      t.integer :project_id
      t.boolean :fitnesse_export
      t.string :api_source
      t.string :api_key
      t.boolean :import_iterations
      t.string :estimate_mode

      t.timestamps
    end
  end

  def self.down
    drop_table :project_configurations
  end
end
