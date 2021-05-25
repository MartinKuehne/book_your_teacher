class Session < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :session_topics
  has_many :bookings
  has_many :topics, through: :session_topics
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 200 }
  validates :price, presence: true
end
