module DataMigration
  module CreateIterationForProjectsWithoutAnIteration
    def self.migrate
      self.projects_without_iteration.each do |project|
        Iteration.create(:project_id => project.id, :start_date => Date.today, :finish_date => Date.today + 7.days)
      end
    end

    def self.projects_without_iteration
      projects = []
      Project.all.each do |project|
        projects << project if project.iterations == []
      end
      return projects
    end
  end
end
