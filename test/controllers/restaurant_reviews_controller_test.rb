require 'test_helper'

class RestaurantReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @restaurant_review = restaurant_reviews(:one)
  end

  test "should get index" do
    get restaurant_reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_restaurant_review_url
    assert_response :success
  end

  test "should create restaurant_review" do
    assert_difference('RestaurantReview.count') do
      post restaurant_reviews_url, params: { restaurant_review: {  reviewer_name: @restaurant_review. reviewer_name, comment: @restaurant_review.comment, rating: @restaurant_review.rating } }
    end

    assert_redirected_to restaurant_review_url(RestaurantReview.last)
  end

  test "should show restaurant_review" do
    get restaurant_review_url(@restaurant_review)
    assert_response :success
  end

  test "should get edit" do
    get edit_restaurant_review_url(@restaurant_review)
    assert_response :success
  end

  test "should update restaurant_review" do
    patch restaurant_review_url(@restaurant_review), params: { restaurant_review: {  reviewer_name: @restaurant_review. reviewer_name, comment: @restaurant_review.comment, rating: @restaurant_review.rating } }
    assert_redirected_to restaurant_review_url(@restaurant_review)
  end

  test "should destroy restaurant_review" do
    assert_difference('RestaurantReview.count', -1) do
      delete restaurant_review_url(@restaurant_review)
    end

    assert_redirected_to restaurant_reviews_url
  end
end
