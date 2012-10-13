require 'artisan-ar-repository/base_repository'
require 'artisan-ar-repository/models/story'

module ArtisanArRepository
  class StoryRepository
    include BaseRepository

    def model_class
      ::Story
    end

    def find(number, project)
      begin
        model_class.by_number_and_project(number, project)
      rescue ActiveRecord::RecordNotFound => e
        raise Artisan::RecordNotFound.new(e)
      end
    end

    def for_user(user)
      model_class.for_user(user)
    end

    def by_project(project)
      model_class.by_project(project)
    end

    def add_to_iteration(iteration, story)
      iteration.stories << story
    end

    def remove_from_iteration(story)
      story.update_attribute(:iteration_id, nil)
    end

    def create_for_project(project, attrs = {})
      project.stories.create!(attrs)
    end

    def all(iteration)
      iteration.stories
    end

    def ready(iteration)
      iteration.stories.ready
    end

    def working(iteration)
      iteration.stories.working
    end

    def completed(iteration)
      iteration.stories.completed
    end

    def delete(story)
      story.update_attributes(:deleted => true, :iteration => nil)
      story
    end

    def backlog(project)
      project.stories.backlog
    end
  end
end

