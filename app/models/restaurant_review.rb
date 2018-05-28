class RestaurantReview < ApplicationRecord
  validates_inclusion_of :rating, :in => 1..3
  belongs_to :Restaurant
end
