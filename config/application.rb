require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Shanghai
  class Application < Rails::Application
  	config.generators.assets = false
  	config.generators.helper = false
  	config.i18n.load_path += Dir[Rails.root.join('config', 'locales', '**', '*.{rb,yml}')]
		config.i18n.available_locales = ['zh-CN', :en]
		config.i18n.default_locale = 'zh-CN'
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
