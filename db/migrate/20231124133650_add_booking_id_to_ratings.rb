class AddBookingIdToRatings < ActiveRecord::Migration[7.1]
  def change
    add_column :ratings, :booking_id, :integer
  end
end
