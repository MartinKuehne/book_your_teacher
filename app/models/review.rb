class Review < ApplicationRecord
  belongs_to :booking
  validates :rating, presence: true
  belongs_to :user, through: :bookings
end
