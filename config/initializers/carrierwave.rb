CarrierWave.configure do |config|
  config.fog_credentials = {
    provider: 'AWS',
    aws_access_key_id: ENV['ACCESS_KEY_ID'],
    aws_secret_access_key: ENV['SECRET_ACCESS_KEY'],
    region: 'us-east-2'#リージョンをUS以外にしたかたはそのリージョンに変更
  }

    case Rails.env
    when 'development'
        config.fog_directory  = 'create-box'
        config.asset_host = 'https://s3.amazonaws.com/create-box'
    when 'production'
        config.fog_directory  = 'create-box'
        config.asset_host = 'https://s3.amazonaws.com/create-box'
    end
end