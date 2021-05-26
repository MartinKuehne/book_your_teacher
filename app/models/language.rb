class Language < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :user_languages
end
