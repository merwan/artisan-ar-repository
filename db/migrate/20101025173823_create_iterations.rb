class CreateIterations < ActiveRecord::Migration
  def self.up
    create_table :iterations do |t|
      t.references :project
      t.string :name
      t.integer :velocity
      t.timestamps
    end
  end

  def self.down
    drop_table :iterations
  end
end
