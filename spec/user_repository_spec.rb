require 'spec_helper'
require 'artisan/shared_examples/user_examples'
require 'artisan-ar-repository/user_repository'

describe ArtisanArRepository::UserRepository do
  it_behaves_like "user repository"
end
