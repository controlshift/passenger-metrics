# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-
# stub: passenger-metrics 0.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "passenger-metrics".freeze
  s.version = "0.0.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nathan Woodhull".freeze]
  s.date = "2021-07-23"
  s.description = "Get passenger metrics from passenger-status into the analytics tool of your choice.".freeze
  s.email = "nathan@gcontrolshiftlabs.com".freeze
  s.executables = ["passenger-metrics-cloudwatch".freeze]
  s.extra_rdoc_files = [
    "LICENSE",
    "README.md"
  ]
  s.files = [
    ".github/workflows/ci.yml",
    ".rspec",
    "Gemfile",
    "Guardfile",
    "LICENSE",
    "README.md",
    "Rakefile",
    "VERSION",
    "bin/_guard-core",
    "bin/guard",
    "bin/passenger-metrics-cloudwatch",
    "lib/passenger-metrics.rb",
    "lib/passenger-metrics/cloudwatch.rb",
    "lib/passenger-metrics/metrics/base.rb",
    "lib/passenger-metrics/metrics/process_count.rb",
    "lib/passenger-metrics/metrics/queue_length.rb",
    "lib/passenger-metrics/status.rb",
    "passenger-metrics.gemspec",
    "spec/fixtures/status.xml",
    "spec/passenger-metrics/cloudwatch_spec.rb",
    "spec/passenger-metrics/metrics/process_count_spec.rb",
    "spec/passenger-metrics/status_spec.rb",
    "spec/passenger_metrics_spec.rb",
    "spec/spec_helper.rb",
    "spec/status_spec.rb"
  ]
  s.homepage = "http://github.com/controlshift/passenger-metrics".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.6".freeze
  s.summary = "ruby interface to passenger-status".freeze

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<crack>.freeze, ["~> 0.4.3"])
    s.add_runtime_dependency(%q<aws-sdk>.freeze, ["~> 2.2", ">= 2.2.24"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<jeweler>.freeze, ["~> 2.1", ">= 2.1.2"])
    s.add_development_dependency(%q<guard>.freeze, ["~> 2.13"])
    s.add_development_dependency(%q<guard-rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<byebug>.freeze, [">= 0"])
  else
    s.add_dependency(%q<crack>.freeze, ["~> 0.4.3"])
    s.add_dependency(%q<aws-sdk>.freeze, ["~> 2.2", ">= 2.2.24"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<jeweler>.freeze, ["~> 2.1", ">= 2.1.2"])
    s.add_dependency(%q<guard>.freeze, ["~> 2.13"])
    s.add_dependency(%q<guard-rspec>.freeze, [">= 0"])
    s.add_dependency(%q<byebug>.freeze, [">= 0"])
  end
end

