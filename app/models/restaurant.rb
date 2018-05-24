class Restaurant < ApplicationRecord
  validates_inclusion_of :rating, :in => 1..3
  validates_inclusion_of :maxDeliveryTime, :in => 15..120
  has_many :restaurant_reviews, dependent :destroy
end
