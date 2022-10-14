require 'rails_helper'

RSpec.describe 'iteration 1, us-1' do 
  before :each do 
    @restaurant = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
  end
  describe 'parent index' do 
    it 'When I visit /parents, I see the name of each parent record' do 

      visit '/restaurants'

      expect(page).to have_content('Name: Illegal Petes')
    end
  end
end