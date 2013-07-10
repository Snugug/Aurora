# Pull gems from RubyGems
source 'https://rubygems.org'

# We declare depdendencies at less than their next full version to ensure we don't get any breaking changes.
gem 'compass-aurora', '<4.0.0'
gem 'toolkit', '<2.0.0'
gem 'singularitygs', '<2.0.0'
gem 'breakpoint', '<3.0.0'
gem 'sassy-buttons', '<1.0.0'
gem 'compass-normalize', '<2.0.0'
gem 'css_parser', '~>1.3.4'

# Now that you're using Bundler, you need to run `bundle exec compass watch` instead of simply `compass watch`.
