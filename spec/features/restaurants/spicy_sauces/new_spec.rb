require 'rails_helper'

RSpec.describe 'sauce creation' do 
  it 'can create a new hot sauce' do 
    restaurants = Restaurant.create!(name: 'Illegal Petes', rating: 5, allows_children: true)
    visit "/restaurants/#{restaurants.id}/spicy_sauces/new"
    
    fill_in('Name', with: 'Magic Eraser')
    # fill_in('Spice Level')
    click_button('Create Sauce')
    
    
    expect(current_path).to eq("/restaurants/#{restaurants.id}/spicy_sauces")
    expect(page).to have_content("Magic Eraser")
  end
end