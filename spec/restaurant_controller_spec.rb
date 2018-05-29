# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RestaurantsController, type: :controller do
  describe 'GET index' do
    it 'should have a 200 status code' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST add_restaurant' do
    context 'add a restaurant' do
      context
      let(:cuisine) { FactoryBot.create(:cuisine) }
      it 'should have a created status' do
        restaurant = FactoryBot.build(:restaurant, cuisine: cuisine)
        post :create, params: { restaurant: parameterize_restaurant(restaurant) }, format: :json
        expect(response).to have_http_status(:created)
      end
    end
  end

  describe 'POST update_restaurant' do
    context 'update a restaurant' do
      context
      let(:cuisine) { FactoryBot.create(:cuisine) }
      let!(:restaurant) {FactoryBot.create(:restaurant, cuisine: cuisine)}
      it 'should have an max delivery time changed' do
        post :update, params: { id: restaurant.id, restaurant: parameterize_restaurant(restaurant) }, format: :json
        expect(response).to have_http_status(:ok)
      end
    end
  end

  private

  def parameterize_restaurant(restaurant)
    restaurant.as_json.symbolize_keys.slice(:name,
                                            :cuisine_id,
                                            :address,
                                            :accepts_10_bis,
                                            :max_delivery_time)
  end
end
