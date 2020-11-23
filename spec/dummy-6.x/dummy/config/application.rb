# frozen_string_literal: true

require_relative "boot"

require "rails"
require "action_controller/railtie"
require "action_view/railtie"

Bundler.require(*Rails.groups)

module Dummy
  class Application < Rails::Application
    config.load_defaults 6.0

    config.root = Pathname(__dir__).join("..").realpath

    config.generators.system_tests = nil
  end
end