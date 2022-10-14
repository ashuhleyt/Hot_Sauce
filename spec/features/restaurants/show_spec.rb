require 'rails_helper'

RSpec.describe 'iteration 1, us-' do 
  before :each do 
    @restaurant = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
    @sauce1 = SpicySauce.create!(name: 'Colfax Crusader', spice_level: 8.5, calories: 25, made_today: true, restaurant_id: @restaurant.id)
  end
  describe 'parent show' do 
    it 'When I visit /parents/id, I see the name of each parent record' do 

      visit "/restaurants/#{@restaurant.id}"
    
      expect(page).to have_content('Name: Illegal Petes')
      expect(page).to have_content('Rating: 5')
      expect(page).to have_content('Can you bring your offspring? true')
    end
  end
end