class AdminController < ActionController::Base
  before_action :authenticate_user!
end
