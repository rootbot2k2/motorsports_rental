# Use ISO8601 format for JSON serialized times and dates.
ActiveSupport::JSON::Encoding.use_standard_json_time_format = true
ActiveSupport::JSON::Encoding.time_precision = 0