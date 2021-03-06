class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :activity_posts, dependent: :destroy
  has_many :activity_users, dependent: :destroy
  has_many :joined_activities, through: :activity_users, source: "activity_post"

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
