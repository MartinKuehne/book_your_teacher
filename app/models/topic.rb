class Topic < ApplicationRecord
  validates :name, presence: true
  belongs_to :session_topic
end
