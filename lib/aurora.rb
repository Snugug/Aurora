require 'compass'
require 'toolkit'
require 'sassy-buttons'

extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('aurora', :path => extension_path)

module Aurora
  VERSION = "0.5"
  DATE = "2012-08-1"
end