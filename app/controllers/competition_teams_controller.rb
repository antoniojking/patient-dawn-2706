class CompetitionTeamsController < ApplicationController
  def update
    @competition = Competition.find(params[:competition_id])
    @team = Team.find(teams_params)

    @team << @competition

    redirect_to "/competitions/#{@competition.id}"
  end

  private
  def teams_params
    params.permit(:hometown, :nickname)
  end
end
