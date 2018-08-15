class EditDateForBooking < ActiveRecord::Migration[5.2]
  def change
    change_column :bookings, :day, :date
  end
end
