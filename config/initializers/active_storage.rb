# Require the necessary module
require "active_storage/engine"

# Enable service URLs for both environments
Rails.application.config.active_storage.service_urls = true

# Set default URL options
Rails.application.config.active_storage.default_url_options = if Rails.env.development?
  {
    host: 'localhost:3000',
    protocol: 'http'
  }
else
  {
    host: ENV.fetch('RAILS_HOST') { 'example.com' },
    protocol: 'https'
  }
end