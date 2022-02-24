class AddEndDateToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :end_date, :datetime
    rename_column :bookings, :date, :beginning_date
  end
end
