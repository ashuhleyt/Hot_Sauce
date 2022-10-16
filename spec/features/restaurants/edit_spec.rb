# As a visitor
# When I visit a parent show page
# Then I see a link to update the parent "Update Parent"
# When I click the link "Update Parent"
# Then I am taken to '/parents/:id/edit' where I  see a form to edit the parent's attributes:
# When I fill out the form with updated information
# And I click the button to submit the form
# Then a `PATCH` request is sent to '/parents/:id',
# the parent's info is updated,
# and I am redirected to the Parent's Show page where I see the parent's updated info

require 'rails_helper'

RSpec.describe 'Restaurant Edit' do 
  it 'links to the edit page' do 
    restaurant = Restaurant.create!(name: 'Illegal Petes')

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