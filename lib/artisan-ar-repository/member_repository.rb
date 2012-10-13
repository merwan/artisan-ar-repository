require 'artisan-ar-repository/models/member'
require 'artisan-ar-repository/base_repository'

module ArtisanArRepository
  class MemberRepository
    include BaseRepository

    def model_class
      ::Member
    end
  end
end
