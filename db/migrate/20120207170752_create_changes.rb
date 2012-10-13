class CreateChanges < ActiveRecord::Migration
  def self.up
    create_table :changes do |t|
      t.string :type
      t.integer :source_id
      t.integer :user_id
      t.string :event
      t.string :original_fields
      t.string :changed_fields
      t.timestamps
    end
  end

  def self.down
    drop_table :changes
  end
end
