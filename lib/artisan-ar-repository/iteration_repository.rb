require 'artisan-ar-repository/models/iteration'
require 'artisan-ar-repository/base_repository'

module ArtisanArRepository
  class IterationRepository
    include BaseRepository

    def model_class
      ::Iteration
    end

    def create_for_project(project, attrs)
      model_class.create!(attrs.merge(:project => project))
    end

    def find_by_number(project, number)
      project.iterations.find_by_number(number)
    end

    def by_project(project)
      project.iterations
    end

    def by_project_by_finish_date(project)
      project.iterations.by_finish_date
    end
  end
end

