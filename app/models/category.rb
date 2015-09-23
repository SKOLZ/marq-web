class Category < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  has_many :projects, inverse_of: :category
end
