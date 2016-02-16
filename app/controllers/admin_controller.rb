class AdminController < ActionController::Base
  include Pundit
  protect_from_forgery
  before_action :authenticate_user!
  layout :admin
end
