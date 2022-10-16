require 'rails_helper'

RSpec.describe 'restaurant spicy sauces' do 
  before :each do 
    @restaurant = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
    @restaurant1 = Restaurant.create!(name: 'Pinche Tacos', rating: 4, allows_children: false)
    @sauce1 = SpicySauce.create!(name: 'Colfax Crusader', spice_level: 8.5, calories: 25, made_today: true, restaurant_id: @restaurant.id)
    @sauce2 = SpicySauce.create!(name: 'Hayes Ways', spice_level: 6, calories: 15, made_today: false, restaurant_id: @restaurant.id)
    @sauce3 = SpicySauce.create!(name: 'Burnin Beau', spice_level: 9.5, calories: 40, made_today: true, restaurant_id: @restaurant1.id)
    @sauce4 = SpicySauce.create!(name: 'LA ALL THE WAY', spice_level: 7, calories: 20, made_today: false, restaurant_id: @restaurant1.id)
  end
  describe 'it1 US 5' do 
    it 'When I visit /parents/:parent_id/child_table_name, Then I see each Child that is associated with that Parent with each Childs attributes' do 
      visit "/restaurants/#{@restaurant.id}/spicy_sauces"

      expect(page).to have_content('Name: Colfax Crusader')
      expect(page).to have_content('Spice Level: 8.5')
      expect(page).to have_content('Calories: 25')
      expect(page).to have_content('Made Fresh: true')
    end
  end 
end