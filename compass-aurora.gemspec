require './lib/aurora'

Gem::Specification.new do |s|
  # General Project Information
  s.name = "compass-aurora"
  s.version = Aurora::VERSION
  s.date = Aurora::DATE
  s.rubyforge_project = "compass-aurora"
  s.rubygems_version = "1.7.2"
  s.required_rubygems_version = Gem::Requirement.new(">= 1.2")
  
  # Author Information
  s.authors = ["Sam Richard"]
  s.email = ["snugug@gmail.com"]
  s.homepage = "https://github.com/Snugug/Aurora"
  
  # Project Description
  s.description = "The Aurora base theme"
  s.summary = "Drupal base theme Aurora"
  
  # Files to Include
  s.files = Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/**/*.*")
  
  # Dependent Gems
  
  s.add_dependency("compass",         [">= 0.13.alpha.0"])
  s.add_dependency("toolkit",         [">= 0.1.10"])
  s.add_dependency("sassy-buttons",   [">= 0.1.1"])
end