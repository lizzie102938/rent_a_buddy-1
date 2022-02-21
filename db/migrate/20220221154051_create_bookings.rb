class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.datetime :date
      t.text :request_message
      t.references :user, null: false, foreign_key: true
      t.references :buddy, null: false, foreign_key: true

      t.timestamps
    end
  end
end
