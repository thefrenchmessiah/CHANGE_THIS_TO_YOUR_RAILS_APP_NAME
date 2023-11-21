class Booking < ApplicationRecord
  # belongs_to :users, :emotions
  validates :start_date, presence: true
  validates :end_date, presence: true
end
