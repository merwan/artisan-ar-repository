require 'spec_helper'
require 'artisan/shared_examples/change_examples'
require 'artisan-ar-repository/change_repository'

describe ArtisanArRepository::ChangeRepository do
  it_behaves_like "change repository"
end
