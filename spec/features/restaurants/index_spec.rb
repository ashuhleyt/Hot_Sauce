require 'rails_helper'

RSpec.describe 'index pages' do 
  before :each do 
    @restaurant = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
    @restaurant1 = Restaurant.create!(name: 'Pinche Tacos', rating: 4, allows_children: false)
  end
  describe 'parent index' do 
    it 'When I visit /parents, I see the name of each parent record' do 

      visit '/restaurants'

      expect(page).to have_content('Name: Illegal Petes')
    end
  end
  
  describe 'parent index, us 6' do 
    it 'when I visit parent index, I see records are ordered by most recently created, and see when it was created' do 
      visit '/restaurants'

      expect(page).to have_content('Name: Pinche Tacos')
      expect(@restaurant1.name).to appear_before(@restaurant.name)
    end
  end

  it 'links to the new page from the restaurant index' do 
    visit '/restaurants'

    click_link("New Restaurant")
    expect(current_path).to eq('/restaurants/new')
  end
end