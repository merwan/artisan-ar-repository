require 'rubygems/package_task'

pkg_name = "artisan-ar-repository"
pkg_version   = "0.0.9"

spec = Gem::Specification.new do |s|
  s.name = pkg_name
  s.version = pkg_version
  s.summary = "Artisan Active Record Repository"
  s.description = "An interface to the artisan active record persistance layer"
  s.files = Dir.glob("lib/**/*.rb")
  s.require_path = 'lib'
  s.test_files = Dir.glob('spec/**/*_spec.rb')
  s.author = "8th Light Craftsmen"
  s.email = "paul@8thlight.com"
  s.homepage = "http://8thlight.com"
end
