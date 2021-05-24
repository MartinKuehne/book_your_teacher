class Session < ApplicationRecord
  belongs_to :user

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 200 }
  validates :price, presence: true
end
