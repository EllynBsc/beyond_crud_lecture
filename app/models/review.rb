class Review < ApplicationRecord
  belongs_to :restaurant #allows you to retrieve @review.restaurant
  validates :content, presence: true
end
