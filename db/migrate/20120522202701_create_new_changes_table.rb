class CreateNewChangesTable < ActiveRecord::Migration
  def self.up
    create_table :changes do |t|
      t.string :type
      t.integer :source_id
      t.integer :user_id
      t.string :event
      t.text :original_fields
      t.text :changed_fields
      t.datetime :created_at
      t.datetime :updated_at
      t.integer :project_id
    end
  end

  def self.down
    drop_table :changes
  end
end
