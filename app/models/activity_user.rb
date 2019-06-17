class ActivityUser < ApplicationRecord
  belongs_to :activity_post
  belongs_to :user
end
