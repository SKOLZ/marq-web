class Project < ActiveRecord::Base
  has_many :project_images
  belongs_to :category
  accepts_nested_attributes_for :project_images

  validates :title, :category, presence: true

  scope :multistores, -> { where(category: Category.where(name: 'multistore')) }
  scope :kiosks, -> { where(category: Category.where(name: 'kiosk')) }
  scope :recent, -> { where("date > ?", 2.years.ago) }

end
