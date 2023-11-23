class User < ApplicationRecord
  has_many :emotions, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :client_inquiries, class_name: 'Inquiry', foreign_key: 'client_id', dependent: :destroy
  has_many :owner_inquiries, class_name: 'Inquiry', foreign_key: 'owner_id', dependent: :destroy

  has_one_attached :photo

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :email, presence: true, uniqueness: true
  validates :photo, presence: true

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
