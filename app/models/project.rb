class Project < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :title, :type presence: true

end
