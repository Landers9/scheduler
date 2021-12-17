require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SchedulApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    config.assets.initialize_on_precompile = false

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.

    config.assets.precompile += %w( popper.min.js )
    config.assets.precompile += %w( bootstrap.min.js )
    config.assets.precompile += %w( perfect-scrollbar.min.js )
    config.assets.precompile += %w( smooth-scrollbar.min.js )
    config.assets.precompile += %w( chartjs.min.js )

    config.assets.precompile += %w( nucleo-svg.css )
    config.assets.precompile += %w( nucleo-icons.css)
    config.assets.precompile += %w( material-dashboard.css)

  end
end
