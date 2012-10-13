class CreateEstimateRooms < ActiveRecord::Migration
  def self.up
    create_table :estimate_rooms do |t|
      t.string :token
      t.text :description
      t.timestamps
    end
  end

  def self.down
    drop_table :estimate_rooms
  end
end
