class TagTeamsController < ApplicationController
  def index
    @tag_teams = TagTeam.all
    render json: @tag_teams
  end

  def show
    @tag_team = TagTeam.find(params[:id])
    render json: @tag_team
  end

  def official
    @tag_teams = TagTeam.official
    render json: @tag_teams
  end
end
