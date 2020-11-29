# frozen_string_literal: true

require "rails/generators"

module Jets
  module Generators
    class GemGenerator < ::Rails::Generators::NamedBase
      namespace "jets:gem"
      source_root File.expand_path("templates", __dir__)

      desc "Generates a gem with given NAME with Jets conventions " \
            "and configurations. \n\n"

      def create_gem_file
        directory(".", "gems/#{name}")

        chmod "engines/#{name}/bin/console", 0o755, verbose: false
      end
    end
  end
end