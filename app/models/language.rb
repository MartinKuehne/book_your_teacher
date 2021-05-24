class Language < ApplicationRecord
  belongs_to :user, through :user_language
end
