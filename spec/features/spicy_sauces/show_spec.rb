require 'rails_helper'

RSpec.describe 'iteration 1, us-4' do 
  before :each do 
    @restaurant = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
    @spicysauces = SpicySauce.create!(name: 'Colfax Crusader', spice_level: 8.5, calories: 25, made_today: true, restaurant_id: @restaurant.id)
  end
  describe 'child show' do 
    it 'When I visit /child/id, I see the name and attributes of that child' do 

      visit "/spicy_sauces/#{@spicysauces.id}"
    # save_and_open_page
      expect(page).to have_content('Colfax Crusader')
      expect(page).to have_content('Spice Level: 8.5')
      expect(page).to have_content('Calories: 25')
      expect(page).to have_content('Made Fresh: true')
    end
  end
end