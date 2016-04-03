class Project < ActiveRecord::Base
  has_many :project_images, inverse_of: :project
  belongs_to :category, inverse_of: :projects

  accepts_nested_attributes_for :project_images, allow_destroy: true

  validates :title, :category, :date, presence: true

  RECENT = 2

  scope :multistores, -> { where(category: Category.where(name: 'multistore')) }
  scope :kiosks, -> { where(category: Category.where(name: 'kiosk')) }
  scope :in_progress, -> { where("date > ?", Date.today) }
  scope :recent, -> { where("date > ? AND date < ?", RECENT.years.ago, Date.today) }
  scope :old, -> { where("date < ?", RECENT.years.ago) }

  rails_admin do
    # configure :project_images, :has_many_association do
    # end
      # show do
      #   field :image do
      #     visible true
      #   end
      # end
    # end
    nested do
      # field :project_image do
      #   visible true
      # end
    end
  end
end
