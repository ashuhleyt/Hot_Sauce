require 'rails_helper'

RSpec.describe 'parent show page' do 
  before :each do 
    @restaurant = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
    @restaurant1 = Restaurant.create!(name: 'Pinche Tacos', rating: 4, allows_children: false)
    @sauce1 = SpicySauce.create!(name: 'Colfax Crusader', spice_level: 8.5, calories: 25, made_today: true, restaurant_id: @restaurant.id)
    @sauce2 = SpicySauce.create!(name: 'Hayes Ways', spice_level: 6, calories: 15, made_today: false, restaurant_id: @restaurant.id)
    @sauce3 = SpicySauce.create!(name: 'Burnin Beau', spice_level: 9.5, calories: 40, made_today: true, restaurant_id: @restaurant.id)
    @sauce4 = SpicySauce.create!(name: 'LA ALL THE WAY', spice_level: 7, calories: 20, made_today: false, restaurant_id: @restaurant.id)
  end
  describe 'iteration 1, us2' do 
    it 'When I visit /parents/id, I see the name of each parent record' do 

      visit "/restaurants/#{@restaurant.id}"
    
      expect(page).to have_content('Name: Illegal Petes')
      expect(page).to have_content('Rating: 5')
      expect(page).to have_content('Can you bring your offspring? true')
    end
  end

  describe 'iteration 1, us 7' do 
    it 'will return a count of the number of children associated with its parent' do 
      visit "/restaurants/#{@restaurant.id}"

      expect(page).to have_content("#{@restaurant.name}")
      expect(page).to have_content("Number of Hot Sauces: 4")
    end
  end
 
  describe 'iteration 1, us 10' do 
   it 'provides link to childs page associated by ID' do 
      visit "/restaurants/#{@restaurant.id}"

    
      expect(page).to have_selector(:css, "a[href='/restaurants/#{@restaurant.id}/spicy_sauces']")
    end
  end
end