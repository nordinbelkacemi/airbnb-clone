class CreateBookings < ActiveRecord::Migration[5.2]
  def change
    create_table :bookings do |t|
      t.datetime :day
      t.boolean :accepted

      t.references :user, foreign_key: true
      t.references :kitchen, foreign_key: true
      t.timestamps
    end
  end
end
