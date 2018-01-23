require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PayrollBuddy
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # don't generate RSpec tests for views and helpers
    config.generators do |g|
      g.test_framework :rspec
      g.view_specs false
      g.helper_specs false
    end

    config.autoload_paths += %W(#{config.root}/lib)
    config.filter_parameters += [:password, :password_confirmation]
    config.active_support.escape_html_entities_in_json = true
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end
