require 'rails_helper'

RSpec.describe 'restaurant creation' do 
  it 'can create a new restaurant' do 
    visit "/restaurants/new"

    fill_in('Name', with: 'El Taco De Mexico')
    click_button('Create Restaurant')

    expect(current_path).to eq("/restaurants/")
    expect(page).to have_content("El Taco De Mexico")
  end
end
