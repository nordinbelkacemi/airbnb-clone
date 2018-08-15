class BookingsController < ApplicationController
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
    if params['button_action'] == 'accept'
    else
    end
  end

  def update
    @booking.update(params[:booking])
  end

  def destroy
    @booking.destroy
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
end
