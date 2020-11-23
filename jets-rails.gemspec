# frozen_string_literal: true
# this file is managed by dry-rb/devtools project

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require "jets/rails/version"

Gem::Specification.new do |spec|
  spec.name = "jets-rails"
  spec.authors = ["Lauri Jutila"]
  spec.license = "MIT"
  spec.version = Jets::Rails::VERSION.dup

  spec.summary = "The official Jets railtie for Ruby on Rails"
  spec.description = "jets-rails provides the official integration of Jets gems with Ruby on Rails framework."
  spec.homepage = "https://github.com/getjets/jets-rails"
  spec.files = Dir["CHANGELOG.md", "LICENSE", "README.md", "jets-rails.gemspec", "lib/**/*"]
  spec.bindir = "bin"
  spec.executables = []
  spec.require_paths = ["lib"]

  spec.metadata["allowed_push_host"] = "https://rubygems.org"
  spec.metadata["changelog_uri"] = "https://github.com/getjets/jets-rails/blob/master/CHANGELOG.md"
  spec.metadata["source_code_uri"] = "https://github.com/getjets/jets-rails"
  spec.metadata["bug_tracker_uri"] = "https://github.com/getjets/jets-rails/issues"

  spec.required_ruby_version = ">= 2.7.0"

  # to update dependencies edit project.yml

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"

  spec.add_development_dependency "fuubar", ">= 2.5"
  spec.add_development_dependency "rspec-instafail", ">= 1.0"
  spec.add_development_dependency "rspec_junit_formatter", ">= 0.4"
end
