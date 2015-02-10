$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "email_signup/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "email_signup"
  s.version     = EmailSignup::VERSION
  s.authors     = ["Igor Belo"]
  s.email       = ["igorcoura@gmail.com"]
  s.homepage    = "https://github.com/igorbelo"
  s.summary     = "Core - Email Signup"
  s.description = "Core - Email Signup"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.1.9"

  s.add_development_dependency "sqlite3"
end
