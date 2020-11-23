#!/usr/bin/env ruby
# frozen_string_literal: true

require "bundler/gem_tasks"

$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "lib"))

require "rspec/core"
require "rspec/core/rake_task"

task default: :rspec

desc "Run all specs"
RSpec::Core::RakeTask.new(:spec)