require_relative 'boot'

require "action_view/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"
require 'sprockets/es6'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HaircuttingVersion2
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
