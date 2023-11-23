class Emotion < ApplicationRecord
  belongs_to :user
  belongs_to :universal_emotion

  has_one_attached :photo

  has_many :ratings
  has_many :bookings

  def booked_today?
    bookings.where('start_date <= ? AND end_date >= ?', Date.today, Date.today).exists?
  end

  def available
    !booked_today?
  end
end
