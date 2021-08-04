require 'rails_helper'

RSpec.describe 'Competition Index Page' do
  # As a user
  # When I visit the competion index
  # Then I see the names of all competitions
  # Each competition name links to its show page
  it 'lists all competitions by name' do
    visit "/competitions"

    expect(page).to have_content(@competition1.name)
    expect(page).to have_content(@competition2.name)
    expect(page).to have_content(@competition3.name)
  end

  xit 'links each name to the competition show page' do
    visit "/competitions"

    expect(page).to have_link(@competition1.name)
    expect(page).to have_link(@competition2.name)
    expect(page).to have_link(@competition3.name)

    click_on(@competition1.name)

    expect(current_path).to eq("/competitions/#{@competition1.id}")

    visit "/competitions"

    click_on(@competition2.name)

    expect(current_path).to eq("/competitions/#{@competition2.id}")

    visit "/competitions"

    click_on(@competition3.name)

    expect(current_path).to eq("/competitions/#{@competition3.id}")
  end
end
