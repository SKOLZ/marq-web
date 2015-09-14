class Project < ActiveRecord::Base
  has_many :project_images
  accepts_nested_attributes_for :project_images

  validates :title, :category, presence: true

  scope :multistores, -> { where(category: 'multistores') }
  scope :kiosks, -> { where(category: 'kiosks') }
  scope :recent, -> { where("date > ?", 2.years.ago) }
end
