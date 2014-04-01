require 'compass'
require 'toolkit'
require 'compass-normalize'

extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('aurora', :path => extension_path)

module Aurora
  VERSION = "3.1.0"
  DATE = "2014-04-01"
end
