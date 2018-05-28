Rails.application.routes.draw do
  resources :cuisines
  resources :reviews
  resources :restaurants
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'restaurants#index'

  get 'reviews/by_restaurant/:id', to: 'reviews#by_restaurant', as:
      :reviews_by_restaurant

  post 'reviews/by_restaurant_new/:id', to:
      'reviews#new_by_retaurant', as: :new_review_by_restaurant

end
