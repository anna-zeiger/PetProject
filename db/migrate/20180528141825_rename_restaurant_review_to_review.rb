class RenameRestaurantReviewToReview < ActiveRecord::Migration[5.2]
  def change
    rename_table :restaurant_reviews, :reviews
  end
end
