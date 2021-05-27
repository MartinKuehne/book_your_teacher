class Lesson < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :lesson_topics
  has_many :bookings
  has_many :topics, through: :lesson_topics
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 20 }
  validates :price, presence: true
  include PgSearch::Model
  pg_search_scope :user_and_lesson,
                  associated_against: {
                    user: [:first_name, :last_name]
                  },
                  against: :name,
                  using: {
                    tsearch: { prefix: true }
                  }
end
