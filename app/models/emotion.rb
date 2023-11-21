class Emotion < ApplicationRecord
  belongs_to :user
  belongs_to :universal_emotion
end
