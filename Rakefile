require 'rubygems'
require 'rspec/core/rake_task'
load 'artisan-ar-repository.gemspec'

task :default => [:spec]
desc "Run specs"
RSpec::Core::RakeTask.new { |t| t.verbose = false }
