class DropTableDays < ActiveRecord::Migration
  def self.up
    drop_table :days
  end

  def self.down
    create_table :days do |t|
      t.integer :iteration_id
      t.integer :user_id
      t.integer :man_days
    end
  end
end
