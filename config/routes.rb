Rails.application.routes.draw do
  resources :cusines
  resources :restaurant_reviews
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'restaurants#index'

  post '/restaurants/:id/review', to: 'restaurants#add_restaurant_review', as:
      :add_restaurant_review
  
  get 'restaurant_reviews/by_restaurant/:id', to: 'restaurant_reviews#by_restaurant', as:
      :reviews_by_restaurant

  post 'restaurant_reviews/by_restaurant_new/:id', to:
      'restaurant_reviews#new_by_retaurant', as: :new_review_by_restaurant

end
