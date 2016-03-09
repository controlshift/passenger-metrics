# encoding: utf-8

require 'rubygems'
require 'bundler'
begin
  Bundler.setup(:default, :development)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end
require 'rake'

require 'jeweler'
Jeweler::Tasks.new do |gem|
  # gem is a Gem::Specification... see http://guides.rubygems.org/specification-reference/ for more options
  gem.name = "passenger-metrics"
  gem.homepage = "http://github.com/controlshift/passenger-metrics"
  gem.license = "MIT"
  gem.summary = %Q{ruby interface to passenger-status}
  gem.description = %Q{Get passenger metrics from passenger-status into the analytics tool of your choice.}
  gem.email = "nathan@gcontrolshiftlabs.com"
  gem.authors = ["Nathan Woodhull"]
  gem.executables = ['passenger-metrics-cloudwatch']
  # dependencies defined in Gemfile
end
Jeweler::RubygemsDotOrgTasks.new

require 'rspec/core/rake_task'
desc 'Default: run specs.'
task :default => :spec

desc "Run specs"
RSpec::Core::RakeTask.new do |t|
  t.pattern = "./spec/**/*_spec.rb" # don't need this, it's default.
  t.rspec_opts = '--color'
end

