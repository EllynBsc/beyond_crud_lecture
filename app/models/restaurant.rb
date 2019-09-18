class Restaurant < ApplicationRecord
  validates :name, presence:true

  has_many :reviews# allow you to retrieve @restaurant.reviews
end
