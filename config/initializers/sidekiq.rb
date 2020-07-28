require 'sidekiq/web'
redis_url = ENV['REDIS_URL'] || 'redis://localhost:6379'
Sidekiq.configure_server do |config|
  config.redis = { url: redis_url}
end
Sidekiq.configure_client do |config|
  config.redis = { url: redis_url}
end
Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
  [user, password] == [Rails.application.credentials.dig(:sidekiq_user_name), Rails.application.credentials.dig(:sidekiq_password)]
end