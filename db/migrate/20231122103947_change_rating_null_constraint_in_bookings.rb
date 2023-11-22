class ChangeRatingNullConstraintInBookings < ActiveRecord::Migration[7.1]
  def change
    change_column_null :bookings, :rating_id, true
  end
end
