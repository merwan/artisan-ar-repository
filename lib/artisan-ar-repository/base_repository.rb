module ArtisanArRepository
  module BaseRepository
    def new(attributes = {})
      model_class.new(attributes)
    end

    def find(id)
      model_class.find(id)
    rescue ActiveRecord::RecordNotFound => e
      raise Artisan::RecordNotFound.new(e)
    end

    def save(instance)
      instance.save
    end

    def create(attributes = {})
      model_class.create!(attributes)
    end

    def destroy_all(*args)
      model_class.destroy_all(*args)
    end

    def find_each(&block)
      model_class.find_each(&block)
    end

    protected

    def model_class
      raise "implement model_class method on your the repository #{self.class} to return the name of the Active Record Model"
    end
  end
end
