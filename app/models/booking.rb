class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :lesson
  has_many :reviews
  validates :start_time, presence: true
  validates :end_time, presence: true

  before_update :reset_status

  def reset_status
    status = "pending"
  end

  def total_price
    ((end_time - start_time) / 3600.to_f) * lesson.price
  end
end
