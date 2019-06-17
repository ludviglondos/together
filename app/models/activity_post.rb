class ActivityPost < ApplicationRecord
  validates :category, presence: true
  validates :start_time, presence: true

  belongs_to :category
  belongs_to :user
  has_many :activity_users, dependent: :destroy
end
