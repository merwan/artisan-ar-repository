require 'spec_helper'
require 'artisan/shared_examples/future_user_examples'
require 'artisan-ar-repository/future_user_repository'
require 'artisan-ar-repository/project_repository'

describe ArtisanArRepository::FutureUserRepository do
  it_behaves_like "future user repository"
end

