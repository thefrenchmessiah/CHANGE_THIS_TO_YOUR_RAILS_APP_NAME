class User < ApplicationRecord
  has_many :emotions, dependent: :destroy
  has_many :client_inquiries, class_name: 'Inquiry', foreign_key: 'client_id'
  has_many :owner_inquiries, class_name: 'Inquiry', foreign_key: 'owner_id'

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
