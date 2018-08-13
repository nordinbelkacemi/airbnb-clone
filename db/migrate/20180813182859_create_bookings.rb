class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.time :start_time
      t.time :end_time

      t.references :user, foreign_key: true
      t.references :kitchen, foreign_key: true
      t.timestamps
    end
  end
end
