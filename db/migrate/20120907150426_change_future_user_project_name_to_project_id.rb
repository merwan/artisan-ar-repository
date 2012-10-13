class ChangeFutureUserProjectNameToProjectId < ActiveRecord::Migration
  def up
    add_column :future_users, :project_id, :integer
    FutureUser.all.each do |future_user|
      project = Project.find_by_name(future_user.project_name)
      future_user.update_attribute(:project_id, project.id) if project
    end
  end

  def down
    remove_column :future_users, :project_id
  end
end
