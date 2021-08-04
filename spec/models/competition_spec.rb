require 'rails_helper'

RSpec.describe Competition do
  describe 'relationships' do
    it { should have_many :competition_teams }
  end
end
