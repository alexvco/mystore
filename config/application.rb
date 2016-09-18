require File.expand_path('../boot', __FILE__)

require 'rails/all'

require 'action_mailer'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Mystore
  class Application < Rails::Application

    config.to_prepare do
      # Load application's model / class decorators
      Dir.glob(File.join(File.dirname(__FILE__), "../app/**/*_decorator*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end

      # Load application's view overrides
      Dir.glob(File.join(File.dirname(__FILE__), "../app/overrides/*.rb")) do |c|
        Rails.configuration.cache_classes ? require(c) : load(c)
      end
    end

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de

    # Do not swallow errors in after_commit/after_rollback callbacks.
    config.active_record.raise_in_transactional_callbacks = true

    config.assets.initialize_on_precompile = false

    config.action_mailer.perform_deliveries = true
    config.action_mailer.raise_delivery_errors = true
    config.action_mailer.default :charset => "utf-8"
    config.action_mailer.default content_type: "text/html"
    config.action_mailer.default_url_options = { host: ENV['TOY_HOST'] }
    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      address:              "smtp.gmail.com",
      port:                 '587',
      domain:               'mail.google.com',
      user_name:             ENV['TOY_EMAIL'],
      password:              ENV['TOY_PASS'],
      authentication:       :plain,
      enable_starttls_auto: true 
    }
  end
  end
end
