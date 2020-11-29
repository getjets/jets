# frozen_string_literal: true

require "rails/railtie"

module Jets
  module Rails
    # The railtie is responsible for setting up Jets for Rails.
    #
    # @api public
    class Railtie < ::Rails::Railtie
      generators do
        require "generators/jets/engine/engine_generator"
        require "generators/jets/install/install_generator"
      end
    end
  end
end