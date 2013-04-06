CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider                         => 'Google',
    :google_storage_access_key_id     => 'GOOGHF3ZY3G4AAFCFWDM',
    :google_storage_secret_access_key => 'xGJAs8b9vfVEU4bYu/UjAHNwmmtQft6o0FHgCXy3'
  }
  config.fog_directory = 'epoch_clients'
end
