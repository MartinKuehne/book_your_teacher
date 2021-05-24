class SessionTopic < ApplicationRecord
  belongs_to :topic
  belongs_to :session
end
