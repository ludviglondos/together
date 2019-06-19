class ActivityPost < ApplicationRecord
  validates :category, presence: true
  validates :start_time, presence: true
  validates :description, presence: true
  validates :duration, presence: true
  validates :capacity, presence: true
  validates :location, presence: true
  validates :title, presence: true

  belongs_to :category
  belongs_to :user
  has_many :activity_users, dependent: :destroy
  has_many :users, through: :activity_users

  scope :todays_activities, -> { where(start_time: Date.today.all_day) }

  def self.on_date(date)
    where(start_time: date.all_day)
  end
end
