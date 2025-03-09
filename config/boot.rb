ENV["BUNDLE_GEMFILE"] ||= File.expand_path("../Gemfile", __dir__)

require "bundler/setup" # Set up gems listed in the Gemfile.
require "bootsnap/setup" # Speed up boot time by caching expensive operations.

# Configure Bootsnap for Rails 7.1
env = ENV["RAILS_ENV"] || ENV["RACK_ENV"] || "development"
development_mode = ["development", "test"].include?(env)

Bootsnap.setup(
  cache_dir: File.expand_path("../tmp/cache", __dir__),
  development_mode: development_mode,
  load_path_cache: true,
  compile_cache_iseq: !development_mode,
  compile_cache_yaml: true
)
