# frozen_string_literal: true

require "jets-rails"

SPEC_ROOT = Pathname(__dir__)

Dir[SPEC_ROOT.join("support/**/*.rb")].each(&method(:require))

ENV["RAILS_ENV"] ||= "test"

RAILS_VERSION = ENV["RAILS_VERSION"] || "6.x"

require SPEC_ROOT.join("dummy-#{RAILS_VERSION}/dummy/config/environment").to_s

require "rspec/rails"

RSpec.configure do |config|
  config.disable_monkey_patching!

  config.before do |example|
    Rails.application.reloader.reload! unless example.metadata[:no_reload]
  end

  config.around(production: true) do |example|
    begin
      previous = Rails.env
      Rails.env = "production"
      example.run
    ensure
      Rails.env = previous
    end
  end
end