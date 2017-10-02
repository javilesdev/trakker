require_relative 'boot'

require 'rails/all'

require 'money/bank/google_currency'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Trakker
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

 		config.before_configuration do
    	I18n.load_path += Dir[Rails.root.join('config', 'locales', '*.{rb,yml}').to_s]
    	I18n.available_locales = ['es-CL', :es]
    	I18n.default_locale = 'es-CL'
    	I18n.reload!
 		end

 		Money.default_bank = Money::Bank::GoogleCurrency.new

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
