class CreateStories < ActiveRecord::Migration
  def self.up
    create_table :stories do |t|
      t.string :name
      t.decimal :optimistic, :precision => 5, :scale => 1
      t.decimal :pessimistic, :precision => 5, :scale => 1
      t.decimal :realistic, :precision => 5, :scale => 1
      t.integer :iteration_id
      t.boolean :state

      t.references :project

      t.timestamps
    end
  end

  def self.down
    drop_table :stories
  end
end
