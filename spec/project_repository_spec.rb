require 'spec_helper'
require 'artisan/shared_examples/project_examples'
require 'artisan-ar-repository/project_repository'

describe ArtisanArRepository::ProjectRepository do
  it_behaves_like "project repository"
end
