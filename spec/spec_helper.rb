require 'rspec'

$LOAD_PATH << File.join(File.dirname(__FILE__), '..', 'lib')

require 'passenger-metrics'

def fixture_path
  File.expand_path("../fixtures", __FILE__)
end

def fixture(file)
  File.new(File.join(fixture_path, '/', file))
end

def fixture_string(file)
  File.read(fixture(file))
end