# Configure Active Record for Rails 7.1
Rails.application.config.active_record.verify_foreign_keys_for_fixtures = true
Rails.application.config.active_record.run_commit_callbacks_on_first_saved_instances_in_transaction = true
Rails.application.config.active_record.allow_deprecated_singular_associations_name = false

# Configure async query executor
Rails.application.config.active_record.async_query_executor = :global_thread_pool

# Configure encryption (optional)
if Rails.application.credentials.active_record_encryption.present?
  Rails.application.config.active_record.encryption = {
    primary_key: Rails.application.credentials.active_record_encryption[:primary_key],
    deterministic_key: Rails.application.credentials.active_record_encryption[:deterministic_key],
    key_derivation_salt: Rails.application.credentials.active_record_encryption[:key_derivation_salt]
  }
end