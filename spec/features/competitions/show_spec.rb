require 'rails_helper'

RSpec.describe 'Competition Show Page' do
  # As a user
  # When I visit a competition's show page
  # Then I see the competition's name, location, and sport
  # And I see the nickname and hometown of all teams in this competition
  # And I see the average age of all players in the competition
  it 'shows the competition attributes as well as associated teams attributes' do
    visit "/competitions/#{@competition1.id}"

    expect(current_path).to eq("/competitions/#{@competition1.id}")
    expect(page).to have_content(@competition1.name)
    expect(page).to have_content(@competition1.location)
    expect(page).to have_content(@competition1.sport)

    within("#Team-#{@team1.id}") do
      expect(page).to have_content(@team1.hometown)
      expect(page).to have_content(@team1.nickname)
    end

    within("#Team-#{@team2.id}") do
      expect(page).to have_content(@team2.hometown)
      expect(page).to have_content(@team2.nickname)
    end

    expect(page).to_not have_content(@competition2.name)
    expect(page).to_not have_content(@competition2.location)
    expect(page).to_not have_content(@competition2.sport)
    expect(page).to_not have_content(@competition3.name)
    expect(page).to_not have_content(@competition3.location)
    expect(page).to_not have_content(@competition3.sport)
    expect(page).to_not have_content(@team3.hometown)
    expect(page).to_not have_content(@team3.nickname)
    expect(page).to_not have_content(@team6.hometown)
    expect(page).to_not have_content(@team6.nickname)
  end

  xit 'displays the average age of all players in the competition' do
    visit "/competitions/#{@competition1.id}"

    expect(page).to have_content(@competition1.players.average_age.round(0))
  end
end