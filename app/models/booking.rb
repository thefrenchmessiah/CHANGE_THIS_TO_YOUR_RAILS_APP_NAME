class Booking < ApplicationRecord
  belongs_to :client, class_name: 'User', foreign_key: 'client_id'
  belongs_to :owner, class_name: 'User', foreign_key: 'owner_id'
  belongs_to :emotion
  has_one :rating

  validates :start_date, presence: true
  validates :end_date, presence: true
end
