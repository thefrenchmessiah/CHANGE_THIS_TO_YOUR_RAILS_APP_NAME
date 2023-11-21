class Booking < ApplicationRecord
  belongs_to :client, class_name: 'User'
  belongs_to :owner, class_name: 'User'
  belongs_to :emotion
  has_one :rating

  validates :start_date, presence: true
  validates :end_date, presence: true
end
