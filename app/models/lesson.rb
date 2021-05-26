class Lesson < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :lesson_topics
  has_many :bookings
  has_many :topics, through: :lesson_topics
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :price, presence: true
end
