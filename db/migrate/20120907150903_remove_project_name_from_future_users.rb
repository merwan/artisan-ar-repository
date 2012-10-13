class RemoveProjectNameFromFutureUsers < ActiveRecord::Migration
  def up
    remove_column :future_users, :project_name
  end

  def down
    add_column :future_users, :project_name, :string
  end
end
