RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  config.authenticate_with do
    warden.authenticate! scope: :user
  end
  config.current_user_method(&:current_user)

  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0
  # config.parent_controller = "ApplicationController"
  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  # config.model ProjectImage do
  #   edit do
  #     field :image, :carrierwave
  #   end
  # end

  # config.model Project do
  #   nested do
  #     field :project_images
  #   end
  # end

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
