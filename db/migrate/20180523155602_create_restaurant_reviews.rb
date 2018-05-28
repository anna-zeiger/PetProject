class CreateRestaurantReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :restaurant_reviews do |t|
      t.string :reviewer_name
      t.integer :rating
      t.text :comment
      t.timestamps
    end
  end
end
