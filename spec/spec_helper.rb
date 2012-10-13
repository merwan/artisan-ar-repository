$: << File.expand_path(File.dirname(__FILE__) + "/../lib")
require "artisan-ar-repository/init"

RSpec.configure do |config|
  # keep db clean by running in transaction which gets rolled back
  config.around :each do |example|
    ActiveRecord::Base.transaction do
      example.run
      ActiveRecord::Base.connection.rollback_db_transaction
    end
  end
end