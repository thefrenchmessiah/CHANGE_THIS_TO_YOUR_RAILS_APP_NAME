class Inquiry < ApplicationRecord
  belongs_to :booking
  belongs_to :client, class_name: 'User'
  belongs_to :owner, class_name: 'User'
end
