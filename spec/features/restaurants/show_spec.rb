require 'rails_helper'

RSpec.describe 'iteration 1, us-1' do 
  before :each do 
    @restaurant = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
  end
  describe 'parent index' do 
    it 'When I visit /parents/id, I see the name of each parent record' do 

      visit "/restaurants/#{@restaurant.id}"
    
      expect(page).to have_content('Name: Illegal Petes')
      expect(page).to have_content('Rating: 5')
      expect(page).to have_content('Can you bring your offspring? true')
    end
  end
end