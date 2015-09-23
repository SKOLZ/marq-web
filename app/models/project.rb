class Project < ActiveRecord::Base
  has_many :project_images, inverse_of: :project
  belongs_to :category, inverse_of: :projects
  accepts_nested_attributes_for :project_images, allow_destroy: true

  validates :title, :category, presence: true

  RECENT = 2

  scope :multistores, -> { where(category: Category.where(name: 'multistore')) }
  scope :kiosks, -> { where(category: Category.where(name: 'kiosk')) }
  scope :recent, -> { where("date > ?", RECENT.years.ago) }
  scope :old, -> { where("date < ?", RECENT.years.ago) }

  def images
    project_images
  end

  rails_admin do
    nested do
      field :project_images do
        visible do
          true
        end
      end
    end
  end
end
