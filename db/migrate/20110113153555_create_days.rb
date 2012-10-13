class CreateDays < ActiveRecord::Migration
  def self.up
    create_table :days do |t|
      t.integer :user_id
      t.integer :iteration_id
      t.integer :man_days

      t.timestamps
    end
  end

  def self.down
    drop_table :days
  end
end
