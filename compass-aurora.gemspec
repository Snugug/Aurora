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
  s.authors = ["Sam Richard", "Ian Carrico"]
  s.email = ["snugug@gmail.com", "github@iancarrico.com"]
  s.homepage = "http://drupal.org/project/aurora"

  # Project Description
  s.description = "Aurora Subthemes!"
  s.summary = "The companion gem for the Drupal Aurora base theme."
  s.licenses = ["GPL"]

  # Files to Include
  s.files  =  Dir.glob("lib/**/*.*")
  s.files +=  Dir.glob("stylesheets/**/*.*")
  s.files +=  Dir.glob("templates/**/*.*")

  # Dependent Gems

  s.add_dependency("sass",              ["~> 3.2.14"])
  s.add_dependency("compass",           ["~> 0.12.2"])
  s.add_dependency("toolkit",           ["~> 1.2.2"])
  s.add_dependency("breakpoint",        ["~> 2.0.1"])
  s.add_dependency("sassy-buttons",     ["~> 0.2.0"])
  s.add_dependency("singularitygs",     ["~> 1.1.2"])
  s.add_dependency("compass-normalize", ["~> 1.4.3"])
  s.add_dependency("bundler",           [">= 1.3.5"])
end
