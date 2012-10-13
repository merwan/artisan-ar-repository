require "active_record"
require "acts-as-taggable-on"

dbconfig = YAML::load(File.open('config/database.yml'))
ActiveRecord::Base.establish_connection(dbconfig)

require 'artisan/repository'
require 'artisan-ar-repository/artisan_ar_repository'
require 'artisan-ar-repository/story_repository'
require 'artisan-ar-repository/iteration_repository'
require 'artisan-ar-repository/change_repository'
require 'artisan-ar-repository/future_user_repository'

Artisan::Repository.register_repo(ArtisanArRepository)