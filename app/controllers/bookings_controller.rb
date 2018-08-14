class BookingsController < ApplicationController
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = Booking.all
    @kitchen = Kitchen.all
  end

  def new
    @kitchen = Kitchen.find(params[:kitchen_id])
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @kitchen = Kitchen.find(params[:kitchen_id])
    @booking.kitchen = @kitchen
    @booking.save
  end

  def show

  end

  def edit

  end

  def update
    @booking.update(booking_params)
  end

  def destroy
    @booking.destroy
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:day)
  end

end
