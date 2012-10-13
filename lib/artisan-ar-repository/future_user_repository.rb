require 'artisan-ar-repository/models/future_user'
require 'artisan-ar-repository/base_repository'

module ArtisanArRepository
  class FutureUserRepository
    include BaseRepository

    def model_class
      ::FutureUser
    end
    
    def create(attributes = {})
      begin
        future_user = model_class.new(attributes)
        future_user.save!
        future_user
      rescue ActiveRecord::RecordInvalid
        raise Artisan::RecordNotValid.new(future_user)
      end
    end

    def find_by_email(email)
      model_class.find_by_email(email)
    end

    def find_by_project_id(project_id)
      model_class.find_by_project_id(project_id)
    end

    def delete(id)
      model_class.delete(id)
    end
  end
end
