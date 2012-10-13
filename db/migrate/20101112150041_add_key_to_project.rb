class AddKeyToProject < ActiveRecord::Migration
  def self.up
    add_column :projects, :api_key, :string
  end

  def self.down
    remove_column :projects, :api_key
  end
end
