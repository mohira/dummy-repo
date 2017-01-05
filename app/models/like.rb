class Like < ApplicationRecord
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "User"
  
  enum status: { like: 0, love: 1 }
end
