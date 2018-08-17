class Kitchen < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  after_initialize :init

  def init
    self.rating ||= 0
  end

  def booked?
    # check for current or future bookings only
    self.bookings.count > 0
  end
end
