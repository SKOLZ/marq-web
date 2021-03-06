require 'fog/aws'

CarrierWave.configure do |config|

  amazons3 = Rails.application.secrets

  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => amazons3.s3_key,
    :aws_secret_access_key  => amazons3.s3_secret,
    :region                 => amazons3.s3_region,
    :path_style             => true
  }

  config.cache_dir = "#{Rails.root}/public/uploads"                  # To let CarrierWave work on heroku

  config.fog_directory    = amazons3.s3_bucket_name
end
