# Be sure to restart your server when you modify this file.

# Specify a serializer for the signed and encrypted cookie jars.
Rails.application.config.action_dispatch.cookies_serializer = :json

# Specify same-site protection level.
Rails.application.config.action_dispatch.cookies_same_site_protection = :strict