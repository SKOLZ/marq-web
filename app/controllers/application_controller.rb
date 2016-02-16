class ApplicationController < ActionController::Base
  include Pundit
  protect_from_forgery
  layout :custom_layout

  # def admin_logged_in
  #   redirect_to new_user_session_path unless user_signed_in?
  # end

  def custom_layout
    if devise_controller?
      "admin"
    else
      "application"
    end
  end

  def set_default_locale
    I18n.default_locale = :es
  end
end
