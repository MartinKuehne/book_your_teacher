class Topic < ApplicationRecord
  validates :name, presence: true
  belongs_to :lesson_topic
end
