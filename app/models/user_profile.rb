class UserProfile < ApplicationRecord
  belongs_to :user

  enum sex: { male: 1, female: 0 }
end
