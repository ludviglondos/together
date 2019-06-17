class Category < ApplicationRecord
  has_many :activity_posts, dependent: :destroy
end
