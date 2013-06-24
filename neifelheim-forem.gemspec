$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "forem/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "neifelheim-forem"
  s.version     = Forem::VERSION
  s.authors     = ["Manoj Mishra"]
  s.email       = ["b0rn2c0d3@gmail.com"]
  s.homepage    = "https://github.com/neifelheim/forem"
  s.summary     = 'The best Rails 3 forum engine in the world.'
  s.description = 'The best Rails 3 forum engine in the world.'

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.13"
  s.add_development_dependency "sqlite3"
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'  
end
