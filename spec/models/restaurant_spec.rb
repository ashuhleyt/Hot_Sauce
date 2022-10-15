require 'rails_helper'

RSpec.describe Restaurant do 
  before :each do 
    @restaurant = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
    @restaurant1 = Restaurant.create!(name: 'Pinche Tacos', rating: 4, allows_children: false)
    @sauce1 = SpicySauce.create!(name: 'Colfax Crusader', spice_level: 8.5, calories: 25, made_today: true, restaurant_id: @restaurant.id)
    @sauce2 = SpicySauce.create!(name: 'Hayes Ways', spice_level: 6, calories: 15, made_today: false, restaurant_id: @restaurant.id)
    @sauce3 = SpicySauce.create!(name: 'Burnin Beau', spice_level: 9.5, calories: 40, made_today: true, restaurant_id: @restaurant1.id)
    @sauce4 = SpicySauce.create!(name: 'LA ALL THE WAY', spice_level: 7, calories: 20, made_today: false, restaurant_id: @restaurant1.id)
  end
  it {should have_many :spicy_sauces}

  describe 'count of children on parents index page' do
    it 'will return a count of the number of hot sauces at each restaurant' do 
      expect(@restaurant.spicy_sauce_count).to eq(2)
      expect(@restaurant1.spicy_sauce_count).to eq(2)
    end
  end
end