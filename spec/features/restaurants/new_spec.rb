
# As a visitor
# When I visit the Parent Index page
# Then I see a link to create a new Parent record, "New Parent"
# When I click this link
# Then I am taken to '/parents/new' where I see a form for a new parent record
# When I fill out the form with a new parent's attributes:
# And I click the button "Create Parent" to submit the form
# Then a `POST` request is sent to the '/parents' route,
# a new parent record is created,
# and I am redirected to the Parent Index page where I see the new Parent displayed.
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