class CreateStoriesTags < ActiveRecord::Migration
  def self.up
    create_table :stories_tags, :id => false do |t|
      t.integer :story_id
      t.integer :tag_id
    end
  end

  def self.down
    drop_table :stories_tags
  end
end
