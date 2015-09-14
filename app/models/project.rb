class Project < ActiveRecord::Base
  has_many :project_images
  accepts_nested_attributes_for :project_images

  validates :title, :type, presence: true

  scope :multistores, -> { where(type: 'multistores') }
  scope :kiosks, -> { where(type: 'kiosks') }
  scope :recent, -> { where("date > ?", 2.years.ago) }
end
