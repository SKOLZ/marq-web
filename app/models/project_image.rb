class ProjectImage < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :project, inverse_of: :project_images
end
