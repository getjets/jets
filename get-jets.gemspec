# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "jets/rails/version"

Gem::Specification.new do |spec|
  spec.name = "get-jets"
  spec.authors = ["Lauri Jutila"]
  spec.email = "ruby@laurijutila.com"
  spec.license = "MIT"
  spec.version = Jets::Rails::VERSION.dup

  spec.summary = "Jets for your Ruby on Rails apps"
  spec.description = "get-jets provides the official integration of Jets gems with Ruby on Rails framework."
  spec.homepage = "https://github.com/getjets/jets"
  spec.files = Dir["CHANGELOG.md", "LICENSE", "README.md", "get-jets.gemspec", "lib/**/*"]
  spec.bindir = "bin"
  spec.executables = []
  spec.require_paths = ["lib"]

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["changelog_uri"] = "https://github.com/getjets/jets/blob/master/CHANGELOG.md"
  spec.metadata["source_code_uri"] = "https://github.com/getjets/jets"
  spec.metadata["bug_tracker_uri"] = "https://github.com/getjets/jets/issues"

  spec.required_ruby_version = ">= 3.0.0"

  spec.add_runtime_dependency "jets-bundler", "~> 0.1"
  spec.add_runtime_dependency "jets-factory", "~> 0.1"
  spec.add_runtime_dependency "jets-testing", "~> 0.1"
  spec.add_runtime_dependency "jets-rubocop", "~> 0.1"

  # to update dependencies edit project.yml

  spec.add_development_dependency "bundler", "~> 2"
  spec.add_development_dependency "rake", "~> 12.3"
  spec.add_development_dependency "rspec", "~> 3.9"

  spec.add_development_dependency "fuubar", "~> 2.5"
  spec.add_development_dependency "rspec-instafail", "~> 1.0"
  spec.add_development_dependency "rspec_junit_formatter", "~> 0.4"
end
