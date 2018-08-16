class Kitchen < ApplicationRecord
  belongs_to :user
  has_many :bookings
  mount_uploader :photo, PhotoUploader
  after_initialize :init

  def init
    self.rating ||= 0
  end

  def booked?
    # check for current or future bookings only
    self.bookings.count > 0
  end
end
