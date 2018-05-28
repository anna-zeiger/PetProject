class AddRestaurantReferenceToRestaurantReviews < ActiveRecord::Migration[5.2]
  def change
    add_reference :restaurant_reviews, :restaurant, foreign_key: true
  end
end
