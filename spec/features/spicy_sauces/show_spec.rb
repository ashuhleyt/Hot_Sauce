require 'rails_helper'

RSpec.describe 'iteration 1, us-4' do 
  before :each do 
    @restaurant = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
    @spicysauces = SpicySauce.create!(name: 'Colfax Crusader', spice_level: 8.5, calories: 25, made_today: true, restaurant_id: @restaurant.id)
  end
  describe 'child show' do 
    it 'When I visit /child/id, I see the name and attributes of that child' do 

      visit "/spicy_sauces/#{@spicysauces.id}"
      expect(page).to have_content('Colfax Crusader')
      expect(page).to have_content('Spice Level: 8.5')
      expect(page).to have_content('Calories: 25')
      expect(page).to have_content('Made Fresh: true')
    end
  end

  describe 'sauce edit' do 
    it 'links to the edit page for sauces' do 
      restaurant = Restaurant.create!(name: 'Illegal Petes')
      spicysauce = restaurant.spicy_sauces.create!(name: 'Hayes Ways')

      visit '/spicy_sauces'

      click_button "Edit #{spicysauce.name}"
      
      expect(current_path).to eq("/spicy_sauces/#{spicysauce.id}/edit")
    end

    it 'can edit the sauces' do 
      restaurant = Restaurant.create!(name: 'Illegal Pets')
      spicysauce = restaurant.spicy_sauces.create!(name: 'Hayes Ways')

      visit "/spicy_sauces/#{spicysauce.id}/edit"

      fill_in "Name", with: "Illegal Pets"

      click_button 'Update Sauce'

      expect(current_path).to eq('/spicy_sauces/')
      expect(page).to have_content('Illegal Petes')
    end
  end


end 
