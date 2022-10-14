require 'rails_helper'

RSpec.describe '' do 
  before :each do 
    @restaurant = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
    @sauce1 = SpicySauce.create!(name: 'Colfax Crusader', spice_level: 8.5, calories: 25, made_today: true, restaurant_id: @restaurant.id)
  end

  describe 'it1 US 5' do 
    it 'When I visit /parents/:parent_id/child_table_name, Then I see each Child that is associated with that Parent with each Childs attributes' do 
      visit "/restaurants/#{@restaurant.id}/spicy_sauces"

      expect(page).to have_content('Name: Colfax Crusader')
    end
  end
end