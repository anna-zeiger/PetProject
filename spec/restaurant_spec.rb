# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Review, type: :model do
  describe '.create' do
    context 'an italian restaurant' do
      context
      let(:cuisine) { FactoryBot.create(:cuisine) }
      let(:restaurant) { FactoryBot.create(:restaurant, cuisine: cuisine) }

      it 'should have an italian cuisine' do
        byebug
        expect(restaurant.cuisine.name).to eq(`Italian`)
      end
    end
  end

  describe '.create' do
    context 'a restaurant with one review' do
      let(:cuisine) { FactoryBot.create(:cuisine) }
      let(:restaurant) { FactoryBot.create(:restaurant, cuisine: cuisine) }
      let!(:review) { FactoryBot.create(:review, restaurant: restaurant) }
      it 'should have the rating of the review' do
        expect(restaurant.reviews.all.count).to eq(1)
        expect(restaurant.rating).to eq(1)
      end
    end
  end

  describe '.create' do
    context 'a restaurant with few reviews' do
      let(:cuisine) { FactoryBot.create(:cuisine) }
      let(:restaurant) { FactoryBot.create(:restaurant, cuisine: cuisine) }
      let!(:review) { FactoryBot.create(:review, rating: 1, restaurant: restaurant) }
      let!(:review2) { FactoryBot.create(:review, rating: 2, restaurant: restaurant) }
      let!(:review3) { FactoryBot.create(:review, rating: 3, restaurant: restaurant) }
      it 'should have the rating equals to the average of the reviews ratings' do
        expect(restaurant.reviews.all.count).to eq(3)
        expect(restaurant.rating).to eq(2)
      end
    end
  end
end
