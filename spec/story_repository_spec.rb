require 'spec_helper'
require 'artisan/shared_examples/story_examples'
require 'artisan-ar-repository/story_repository'

describe ArtisanArRepository::StoryRepository do
  it_behaves_like("story repository")
end
