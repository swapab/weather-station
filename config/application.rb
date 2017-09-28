require_relative 'boot'

require 'active_model/railtie'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_view/railtie'
require 'active_job/railtie'
require 'action_cable/engine'
require 'sprockets/railtie'
require 'rails/test_unit/railtie'

Bundler.require(*Rails.groups)

module WeatherStation
  class Application < Rails::Application

    config.generators do |g|
      g.test_framework :minitest,
                       fixtures: true,
                       view_specs: false,
                       helper_specs: false,
                       routing_specs: false,
                       controller_specs: false,
                       request_specs: false

      g.fixture_replacement :factory_girl, dir: 'test/factories'
    end

    config.load_defaults 5.1

    config.autoload_paths << Rails.root.join('lib')
  end
end
