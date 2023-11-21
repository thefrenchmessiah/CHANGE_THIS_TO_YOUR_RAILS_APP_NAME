class Emotion < ApplicationRecord
  belongs_to :user
  belongs_to :universal_emotion

  has_many :ratings
  has_many :bookings
end
