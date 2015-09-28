class ProjectImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :project, inverse_of: :project_images

  validates :text, presence: true

  validates :project_id, presence: true

  rails_admin do
    show do
      field :image
      field :text
    end
    edit do
      field :text
      field :image
      field :project_id, :enum do
        enum do
          Project.all.collect {|p| [p.title, p.id]}
        end
      end
    end
  end
end
