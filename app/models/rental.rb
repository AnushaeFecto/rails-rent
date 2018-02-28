class Rental < ApplicationRecord
  DELIVERIES = ["Express 1-2 days £15", "Standard 3-5 days £10"]

  belongs_to :user
  belongs_to :item
  validates :start_date, :end_date, :address, presence: :true
  validates :delivery_type, presence: :true, inclusion: {in: DELIVERIES}
end
