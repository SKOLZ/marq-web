class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery
  before_action :set_default_locale

  # def admin_logged_in
  #   redirect_to new_user_session_path unless user_signed_in?
  # end

  def set_default_locale
    I18n.default_locale = :es
  end
end
