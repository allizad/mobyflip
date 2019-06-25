# frozen_string_literal: true

require 'rubygems'
require 'redis'

redis_url = (ENV['REDIS_URL'] || ENV['REDISCLOUD_URL'])

if redis_url
  uri        = URI.parse(redis_url)
  $redis     = Redis.new(host: uri.host, port: uri.port, password: uri.password)
else
  $redis = Redis.new
end

# Setup Rollout
ROLLOUT = Rollout.new($redis, id_user_by: :to_param)

# Import feature information
Rails.application.config_for(:rollout_features).each do |feature, details|
  ROLLOUT.set_feature_data(feature, details.slice(:name, :description))
end
