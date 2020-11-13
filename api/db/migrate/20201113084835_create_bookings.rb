class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.date :start_date
      t.date :end_date
      t.string :description
      t.references :space, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
