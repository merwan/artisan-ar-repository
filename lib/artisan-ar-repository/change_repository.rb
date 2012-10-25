require 'artisan-ar-repository/base_repository'
require 'artisan-ar-repository/models/change'
require 'artisan-ar-repository/models/story_change'
require 'artisan-ar-repository/models/iteration_change'
require 'artisan-ar-repository/models/project_change'

module ArtisanArRepository
  class ChangeRepository
    include BaseRepository

    def model_class
      ::Change
    end

    def project_change_class
      ::ProjectChange
    end

    def iteration_change_class
      ::IterationChange
    end

    def story_change_class
      ::StoryChange
    end

    def create_project_change(attributes = {})
      project_change_class.create!(attributes)
    end

    def create_iteration_change(attributes = {})
      iteration_change_class.create!(attributes)
    end

    def create_story_change(attributes = {})
      story_change_class.create!(attributes)
    end

    def find_all_by_project_id(project_id)
      Change.find_all_by_project_id(project_id)
    end

    def find_range_by_project_id(project_id, starts_at, ends_at)
      segment_length = ends_at - starts_at + 1
      Change.where(:project_id => project_id).offset(starts_at).limit(segment_length)
    end
  end
end

