class Restaurant < ApplicationRecord
  validates :max_delivery_time, numericality: { only_integer: true,
                                                greater_than_or_equal_to: 15,
                                                less_than_or_equal_to: 120 }
  has_many :reviews, dependent: :destroy
  belongs_to :cuisine

  def rating
    reviews.any? ? reviews.average(:rating).to_i : 0
  end
end
