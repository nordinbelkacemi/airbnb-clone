class Kitchen < ApplicationRecord
  belongs_to :users
  has_many :bookings
  mount_uploader :photo, PhotoUploader
end
