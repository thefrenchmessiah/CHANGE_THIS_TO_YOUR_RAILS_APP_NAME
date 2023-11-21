class AddDetailsToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :start_date, :date, null: false
    add_column :bookings, :end_date, :date, null: false
    add_reference :bookings, :client, null: false, foreign_key: { to_table: :users }
    add_reference :bookings, :owner, null: false, foreign_key: { to_table: :users }
    add_reference :bookings, :emotion, null: false, foreign_key: true
    add_reference :bookings, :rating, null: false, foreign_key: true
  end
end
