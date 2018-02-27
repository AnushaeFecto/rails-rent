class Rental < ApplicationRecord
  belongs_to :user
  belongs_to :item
  validates :start_date, :end_date, :address, presence: :true
end