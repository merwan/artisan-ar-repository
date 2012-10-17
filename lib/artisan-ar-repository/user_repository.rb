require 'artisan-ar-repository/models/user'
require 'artisan-ar-repository/base_repository'

module ArtisanArRepository
  class UserRepository
    include BaseRepository

    def model_class
      ::User
    end
    
    def create(attributes = {})
      begin
        user = model_class.new(attributes)
        user.save!
        user
      rescue ActiveRecord::RecordInvalid 
        raise Artisan::RecordNotValid.new(user)
      end
    end

    def find_by_login(login)
      model_class.find_by_login(login)
    end

    def find_by_email(email)
      model_class.find_by_email(email)
    end

    def active_stories_for(user)
      Artisan::Repository.story.for_user(user).working.reject do |story|
        story.iteration.nil?
      end
    end
  end
end

