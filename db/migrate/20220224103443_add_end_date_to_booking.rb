class AddEndDateToBooking < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :ends_at, :datetime
    rename_column :bookings, :date, :starts_at
  end
end
