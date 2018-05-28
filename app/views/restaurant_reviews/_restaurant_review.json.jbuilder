json.extract! restaurant_review, :id, :reviewer_name, :rating, :comment, :created_at, :updated_at
json.url restaurant_review_url(restaurant_review, format: :json)
