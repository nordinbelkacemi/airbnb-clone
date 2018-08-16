class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :destroy]

  def index
    @bookings_out = current_user.bookings
    @bookings_in = Booking.joins(:kitchen).where("kitchens.user_id = ?", current_user.id)
  end

  def new
    @kitchen = Kitchen.find(params[:kitchen_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save!
    redirect_to kitchens_path
  end

  def show
  end

  def edit
  end

  def update
    @booking.update(booking_params_update)
    redirect_to bookings_path
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    prms = params.require(:booking).permit("day(1i)", "day(2i)", "day(3i)")
    date = DateTime.parse("#{prms['day(1i)']}/#{prms['day(2i)']}/#{prms['day(3i)']}")
    return {
      day: date,
      user_id: current_user.id,
      kitchen_id: params[:kitchen_id],
      created_at: DateTime.now
    }
  end

  def booking_params_update
    prms = params.require(:booking).permit("day(1i)", "day(2i)", "day(3i)")
    date = DateTime.parse("#{prms['day(1i)']}/#{prms['day(2i)']}/#{prms['day(3i)']}")
    return {
      day: date,
      updated_at: DateTime.now
    }
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
