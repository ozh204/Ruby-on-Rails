CarrierWave.configure do |config|
  config.fog_provider = 'fog/google'                        # required
  config.fog_credentials = {
      provider:                         'Google',
      google_storage_access_key_id:     '2916aae6cc888bb30fd81ebf5bca137b3cf9bef5',
      google_storage_secret_access_key: ''
  }
  config.fog_directory = 'name_of_directory'
end