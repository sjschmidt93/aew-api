class TagTeamsController < ApplicationController
  def index
    @tag_teams = TagTeam.all
    render json: @tag_teams
  end
end
