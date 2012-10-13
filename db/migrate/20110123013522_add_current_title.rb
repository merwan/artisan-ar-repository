class AddCurrentTitle < ActiveRecord::Migration
  def self.up
    add_column :estimate_rooms, :current_title, :string
  end

  def self.down
    remove_column :estimate_rooms, :current_title
  end
end
