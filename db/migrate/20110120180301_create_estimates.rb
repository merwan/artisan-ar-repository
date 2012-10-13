class CreateEstimates < ActiveRecord::Migration
  def self.up
    create_table :estimates do |t|
      t.integer :estimator_id
      t.integer :estimate_room_id
      t.integer :optimistic
      t.integer :realistic
      t.integer :pessimistic
      t.integer :story_id

      t.timestamps
    end
  end

  def self.down
    drop_table :estimates
  end
end
