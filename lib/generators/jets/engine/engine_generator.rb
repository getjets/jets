# frozen_string_literal: true

require "rails/generators"

module Jets
  module Generators
    class EngineGenerator < ::Rails::Generators::NamedBase
      namespace "jets:engine"
      source_root File.expand_path("templates", __dir__)

      desc "Generates a Rails engine with given NAME with Jets conventions " \
            "and configurations. \n\n"

      def create_engine_file
        directory(".", "engines/#{name}")

        chmod "engines/#{name}/bin/console", 0o755, verbose: false
        chmod "engines/#{name}/bin/rails", 0o755, verbose: false
      end

      def mount_engine_to_routes
        route "mount #{class_name}::Engine, at: \"/\", as: :#{name}_root"
      end

      def add_engine_to_gemfile_as_component
        append_to_file "Gemfile", "component \"#{name}\""
      end
    end
  end
end