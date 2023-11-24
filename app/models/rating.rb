class Rating < ApplicationRecord
  belongs_to :emotion
  belongs_to :booking
end
