require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Conta
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Agregando configuraciones para en dependencia de cada instancia.
    if ENV["RAILS_USER"].present?
      directory_user_setting = [Rails.root, 'instance-configuration', ENV["RAILS_USER"]].join('/')

      config.paths['log'] = "log/#{ENV["RAILS_USER"]}_conta.log"
      config.paths['config/database'] = [directory_user_setting, 'database.yml'].join('/')
      config.paths['config/secrets'] = [directory_user_setting, 'secret_key.yml'].join('/')
    end

    config.i18n.default_locale = :es
  end
end
