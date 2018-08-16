class PagesController < ApplicationController
  def home
  end

  def profile
    @bookings_out = current_user.bookings
    @bookings_in = Booking.joins(:kitchen).where("kitchens.user_id = ?", current_user.id)
    @user_kitchens = current_user.kitchens
  end
end
