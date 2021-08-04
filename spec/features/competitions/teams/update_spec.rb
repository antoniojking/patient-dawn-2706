require 'rails_helper'

RSpec.describe 'Competition Teams Update' do
  # As a user
  # When I visit a competition's show page
  # Then I see a link to register a new team
  # When I click this link
  # Then I am taken to a new page where I see a form
  # When I fill in this form with a team's hometown and nickname
  # And I click submit
  # Then I am redirected back to the competition's show page
  # And I see the new team I created listed
  it 'has a form to add existing team to competition' do
    visit "/competitions/#{@competition1.id}/teams/update"

    fill_in(:hometown, with: @team6.hometown)
    fill_in(:nickname, with: @team6.nickname)

    click_on("Submit")

    expect(current_path).to eq("/competitions/#{@competition1.id}")
    expect(page).to have_content(@team6.id)
    expect(page).to have_content(@team6.hometown)
    expect(page).to have_content(@team6.nickname)
  end
end
