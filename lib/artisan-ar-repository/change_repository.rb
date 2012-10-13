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
    
    def find_all_by_project_id(id)
      Change.find_all_by_project_id(id)
    end
    
  end
end

