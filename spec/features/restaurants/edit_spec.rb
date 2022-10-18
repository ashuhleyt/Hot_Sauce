require 'rails_helper'

RSpec.describe 'Restaurant Edit' do 
  it 'links to the edit page' do 
    restaurant = Restaurant.create!(name: 'El Taco De Mexico')

    visit '/restaurants'
    
    click_button "Edit #{restaurant.name}"

    expect(current_path).to eq("/restaurants/#{restaurant.id}/edit")
  end

  it 'can edit the restaurants' do 
    restaurant = Restaurant.create!(name: 'Illegal Pets')

    visit "/restaurants/"

    expect(page).to have_content('Illegal Pets')

    click_button 'Edit Illegal Pets'

    fill_in 'Name', with: 'Illegal Petes'
    click_button 'Update Restaurant'

    expect(current_path).to eq("/restaurants")
    expect(page).to have_content("Illegal Petes")
  end
end