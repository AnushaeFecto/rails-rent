class Item < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  validates :description, :price, :size, presence: :true
  mount_uploader :photo, PhotoUploader, :mount_on => :photo
end
