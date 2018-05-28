class Restaurant < ApplicationRecord
  validates_inclusion_of :maxDeliveryTime, :in => 15..120
  has_many :restaurant_reviews, dependent: :destroy
  belongs_to :cusine
  accepts_nested_attributes_for :restaurant_reviews
  accepts_nested_attributes_for :cusine

  def rating
    restaurant_reviews.any? ? restaurant_reviews.average(:rating) : 0
  end
end
