require 'rails_helper'

RSpec.describe Team do
  describe 'relationships' do
    it { should have_many(:players) }
    it { should have_many(:competitions).through(:competition_teams) }
  end

  describe 'class methods' do
    it 'calculates average age of players' do
      expect(Team.avg_age_players).to eq(22.75)
    end
  end
end
