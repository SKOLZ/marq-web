# This file is used by Rack-based servers to start the application.

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application

require "sidekiq/web"
Sidekiq::Web.use Rack::Auth::Basic do |username, password|
  username == Rails.application.secrets.sidekiq_username &&
  password == Rails.application.secrets.sidekiq_password
end
