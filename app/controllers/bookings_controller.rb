class BookingsController < ApplicationController
<<<<<<< HEAD
  skip_before_action :authenticate_user!, only: [:index, :show]
=======
  before_action :find_booking, only: [:show, :edit, :update, :destroy]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params[:booking])
    @booking.save
  end

  def show

  end

  def edit

  end

  def update
    @booking.update(params[:booking])
  end

  def destroy
    @booking.destroy
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end


>>>>>>> e000ff69fee93c8ca1f3d187f828bfd09c613b9d
end
