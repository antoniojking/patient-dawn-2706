class Team < ApplicationRecord
  has_many :players
  has_many :competition_teams
  has_many :competitions, through: :competition_teams

  def self.avg_age_players
    joins(:players).average(:age)
  end
end
