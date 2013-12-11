$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "jqtouch_rails/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "jqtouch_rails"
  s.version     = JqtouchRails::VERSION
  s.authors     = ["Adrien Bourgeois"]
  s.email       = ["adrienfrancis.bourgeois@gmail.com"]
  s.homepage    = "http://github.com/adrienbourgeois"
  s.summary     = "Install jqtouch on your rails app"
  s.description = "Install jqtouch on your rails app"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.0.2"
end
