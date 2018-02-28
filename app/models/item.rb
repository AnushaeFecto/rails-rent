class Item < ApplicationRecord
  CATEGORIES = ["dress", "shoes", "bags", "shirts"]

  belongs_to :user
  has_many :rentals, dependent: :destroy
  validates :description, :price, :size, presence: :true
  validates :category, presence: true, inclusion: { in: CATEGORIES}
  mount_uploader :photo, PhotoUploader, :mount_on => :photo
end
