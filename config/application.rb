require_relative "boot"

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "active_storage/engine"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_mailbox/engine"
require "action_text/engine"
require "action_view/railtie"
require "action_cable/engine"
# require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Turoad
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.1
    config.middleware.use ActionDispatch::Cookies
    config.middleware.use ActionDispatch::Session::CookieStore,
      key: '_auth_me_session',
      same_site: :lax,
      secure: Rails.env.production?

    config.railties_order = [:all, :main_app]

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")

    # Only loads a smaller set of middleware suitable for API only apps.
    # Middleware like session, flash, cookies can be added back manually.
    # Skip views, helpers and assets when generating a new resource.
    config.api_only = true
    config.add_autoload_paths_to_load_path = true  # New Rails 7.1 recommendation
    config.active_support.cache_format_version = 7.1
    config.active_record.sqlite3_adapter_strict_strings_by_default = true

    # Configure ActiveStorage URL generation
    config.active_storage.resolve_model_to_route = :rails_storage_proxy

    # Set default URL options for ActiveStorage
    routes.default_url_options = {
      host: 'localhost',
      port: 3000
    }

    # Add these lines after config.load_defaults 7.1
    config.autoload_lib(ignore: %w(assets tasks))
    config.active_support.message_serializer = :json
    config.active_record.verify_foreign_keys_for_fixtures = true
    config.active_record.run_commit_callbacks_on_first_saved_instances_in_transaction = true
    config.active_record.allow_deprecated_singular_associations_name = false

    # Configure mailer queuing behavior
    # config.action_mailer.deliver_later_queue_name = :mailers

    # Configure Active Job to use async adapter by default
    # config.active_job.queue_adapter = :async
  end
end
