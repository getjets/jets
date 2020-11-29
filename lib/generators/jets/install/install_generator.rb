# frozen_string_literal: true

require "rails/generators"

module Jets
  module Generators
    class InstallGenerator < ::Rails::Generators::Base
      namespace "jets:install"
      source_root File.expand_path("templates", __dir__)

      desc "Sets up your Rails application to use Jets. \n\n"

      def set_rails_version
        template ".rails-version", "./.rails-version"
      end

      def modify_gemfile
        prepend_to_file "Gemfile", 'require "bundler/component"'
        prepend_to_file "Gemfile", 'require "bundler/eval_gemfile"'
      end
    end
  end
end