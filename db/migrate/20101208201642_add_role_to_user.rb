class AddRoleToUser < ActiveRecord::Migration
  def self.up
    add_column :users, :role, :string
    add_column :users, :project_id, :integer
  end

  def self.down
    remove_column :users, :role
    remove_column :users, :project_id
  end
end
