class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :items, dependent: :destroy
  has_many :rentals
  validates :name, presence: :true
  #validates :address, presence: :true, uniqueness: :true
  mount_uploader :photo, PhotoUploader
end
