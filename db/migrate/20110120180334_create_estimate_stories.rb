class CreateEstimateStories < ActiveRecord::Migration
  def self.up
    create_table :estimate_stories do |t|
      t.text :description
      t.integer :estimator_room_id

      t.timestamps
    end
  end

  def self.down
    drop_table :estimate_stories
  end
end
