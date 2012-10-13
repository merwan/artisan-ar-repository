class AddIdToMember < ActiveRecord::Migration
  def self.up
    drop_table :members
    create_table :members do |t|
      t.integer :project_id
      t.integer :user_id
      t.boolean :owner, :default => false
      t.timestamps
    end
  end

  def self.down
    drop_table :members
    create_table :members do |t|
      t.integer :project_id
      t.integer :user_id
      t.boolean :owner, :default => false
      t.timestamps
    end
  end
end
