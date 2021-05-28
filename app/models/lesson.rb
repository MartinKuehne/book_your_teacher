class Lesson < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :lesson_topics
  has_many :bookings
  has_many :topics, through: :lesson_topics
  # added dependent destroy to reviews
  has_many :reviews, through: :bookings, dependent: :destroy
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

  def rating_average
    reviews.present? ? reviews.map(&:rating).sum / reviews.length : 0
  end
end
