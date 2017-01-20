class User < ApplicationRecord
  has_one :user_profile, dependent: :destroy
  has_many :to_like_users,   class_name: "Like", foreign_key: 'follower_id'
  has_many :from_like_users, class_name: "Like", foreign_key: 'followed_id'

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  mount_uploader :image, ProfileImageUploader

end
