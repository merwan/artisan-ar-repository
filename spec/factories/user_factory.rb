require 'artisan/repository'
require 'artisan-ar-repository/models/user'

module AR
  module UserFactory
    def self.build(opts = {})
      User.new(
        :full_name => opts[:full_name] || "Test User",
        :projects => opts[:projects] || [],
        :members => opts[:members] || [],
        :login => opts[:login] || "test",
        :email => opts[:email] || "test@user.com",
        :gravatar_url => opts[:gravatar_url] || "",
        :password => opts[:password] || "password",
        :password_confirmation => opts[:password_confirmation] || "password")
    end

    def self.create(opts = {})
      record = AR::UserFactory.build(opts)
      Artisan::Repository.user.save(record)
      record
    end
  end
end
