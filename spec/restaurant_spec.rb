require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do
  describe '.index' do
    context 'a restaurant' do
      it 'should blalal' do

        restaurant = Restaurant.create{name= "fdv", address = "dfsfds", accepts10bis = TRUE, maxDeliveryTime = 4}
        get :index
        restaurants = JSON.parse(response.body)
        expect(assigns(:restaurants)).to eq([restaurant])
      #   dddd
      end
    end
  end
end