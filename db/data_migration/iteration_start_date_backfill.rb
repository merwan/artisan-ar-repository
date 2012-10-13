module DataMigration
  module IterationStartDateBackfill
    def self.calculated_start_date(iteration)
      project = Project.find(iteration.project_id)

      iteration.finish_date - project.life_cycle
    end

  end
end
