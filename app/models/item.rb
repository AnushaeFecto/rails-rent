class Item < ApplicationRecord
  belongs_to :user
  has_many :rentals, dependent: :destroy
  validates :description, :photo, :price, :size, presence: :true
  mount_uploader :photo, PhotoUploader, :mount_on => :photo
end
