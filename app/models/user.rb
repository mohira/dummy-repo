class User < ApplicationRecord
  has_one :user_profile, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum sex: { male: 1, female: 0 }

  mount_uploader :image, ProfileImageUploader

end