require 'rails_helper'

RSpec.describe 'iteration 1, us3' do 
  before :each do 
    @restaurant = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
    @sauce1 = SpicySauce.create!(name: 'Colfax Crusader', spice_level: 8.5, calories: 25, made_today: true, restaurant_id: @restaurant.id)
    @sauce = SpicySauce.create!(name: 'Elder Emo', spice_level: 9.0, calories: 35, made_today: false, restaurant_id: @restaurant.id)
  end
  describe 'child index' do 
    it 'when I visit /spicy_sauces, I see each child in the system with attributes' do 
      
      visit '/spicy_sauces'
    
      expect(page).to have_content('Name: Colfax Crusader')
      expect(page).to have_content('Spice Level: 8.5')
      expect(page).to have_content('Calories: 25')
      expect(page).to have_content('Made Fresh: true')
      expect(page).to have_content('Name: Elder Emo')
      expect(page).to have_content('Spice Level: 9.0')
      expect(page).to have_content('Calories: 35')
      expect(page).to have_content('Made Fresh: false')
    end
  end
end