require_relative 'boot'
require 'rails/all'

Bundler.require(*Rails.groups)

module AboutTime
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    # Set time zone to '台北'
    config.time_zone = "Taipei"
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    # Setup generator
    config.generators do |g|
      g.test_framework :rspec,
        view_specs: false,
        routing_specs: false
    end
  end
end
