class Item < ApplicationRecord
  include PgSearch

  multisearchable against: [ :category, :description, :size]
  include PgSearch
    pg_search_scope :search,
      against: [ :category, :description, :size ],
      using: {
        tsearch: { prefix: true } # <-- now `superman batm` will return something!
      }
  CATEGORIES = ["Dress", "Shoes", "Bags", "Blouse", "Skirt", "Trousers", "Suits", "Shirts", "Tuxedo"]

  belongs_to :user
  has_many :rentals, dependent: :destroy
  validates :description, :price, :size, presence: :true
  validates :category, presence: true, inclusion: { in: CATEGORIES}
  mount_uploader :photo, PhotoUploader, :mount_on => :photo
end
