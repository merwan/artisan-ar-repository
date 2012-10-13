class CreateEstimators < ActiveRecord::Migration
  def self.up
    create_table :estimators do |t|
      t.string :name
      t.integer :estimate_room_id
      t.boolean :admin
      t.string :email
      t.timestamps
    end
  end

  def self.down
    drop_table :estimators
  end
end
