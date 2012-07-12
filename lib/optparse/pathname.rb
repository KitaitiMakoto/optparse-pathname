require 'optparse'
require 'pathname'

OptionParser.accept Pathname do |path|
  Pathname.new path if path
end
