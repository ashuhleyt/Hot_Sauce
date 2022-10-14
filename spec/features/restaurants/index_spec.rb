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

  describe 'parent index' do 
    it 'when I visit parent index, i see records are ordered by most recently created, and see when it was created' do 
      
      visit '/restaurants'

      expect(page).to have_content('Name: Illegal Petes')
      expect(page).to have_content('created at')
    end
  end
end